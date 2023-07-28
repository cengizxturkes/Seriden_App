import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:getx_skeleton/app/data/local/my_hive.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../config/translations/strings_enum.dart';
import '../components/custom_snackbar.dart';
import 'api_exceptions.dart';

enum RequestType {
  get,
  post,
  put,
  delete,
}

class BaseClient {
  static final Dio _dio = Dio()
    ..options = BaseOptions(
      headers: {"asd": "asd"},
    )
    ..interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90,
    ))
    ..interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          // Add a custom header to the request
          //TODO: Get token from storage
          // var user = await MySharedPref.getLoginUser();
          var login = await MyHive.getCurrentUser();

          options.headers['Authorization'] = login?.token ?? "Bearer 13123eeq";
          options.headers['Accept'] = "application/json";
          options.headers['Content-Type'] = "application/json";
          Logger().i(
            'REQUEST ║ ${options.method.toUpperCase()}\n'
            'url: ${options.path}\n'
            'Headers: ${options.headers}\n'
            'Body: ${options.data?.toString() ?? ''}\n',
          );
          return handler.next(options);
        },
        onError: (e, handler) {
          Logger().e(e);
          handler.next(e);
        },
        onResponse: (response, handler) {
          Logger().i(response.data);
          handler.next(response);
        },
      ),
    );

  /// dio getter (used for testing)
  static get dio {
    return _dio;
  }

  /// perform safe api request

  /// download file
  static download(
      {required String url, // file url
      required String savePath, // where to save file
      Function(ApiException)? onError,
      Function(int value, int progress)? onReceiveProgress,
      required Function onSuccess}) async {
    try {
      await _dio.download(
        url,
        savePath,
        options: Options(
            receiveTimeout: 999999.milliseconds,
            sendTimeout: 999999.milliseconds),
        onReceiveProgress: onReceiveProgress,
      );
      onSuccess();
    } catch (error) {
      var exception = ApiException(message: error.toString());
      onError?.call(exception) ?? _handleError(error.toString());
    }
  }

  /// handle unexpected error
  static _handleUnexpectedException(
      {Function(ApiException)? onError, required Object error}) {
    if (onError != null) {
      onError(ApiException(
        message: error.toString(),
      ));
    } else {
      _handleError(error.toString());
    }
  }

  /// handle timeout exception
  static _handleTimeoutException({Function(ApiException)? onError}) {
    if (onError != null) {
      onError(ApiException(
        message: Strings.serverNotResponding.tr,
      ));
    } else {
      _handleError(Strings.serverNotResponding.tr);
    }
  }

  /// handle timeout exception
  static _handleSocketException({Function(ApiException)? onError}) {
    if (onError != null) {
      onError(ApiException(
        message: Strings.noInternetConnection.tr,
      ));
    } else {
      _handleError(Strings.noInternetConnection.tr);
    }
  }

  /// handle Dio error
  static _handleDioError(
      {required DioError error, Function(ApiException)? onError}) {
    // 404 error
    if (error.response?.statusCode == 404) {
      if (onError != null) {
        return onError(ApiException(
          message: Strings.urlNotFound.tr,
          statusCode: 404,
        ));
      } else {
        return _handleError(Strings.urlNotFound.tr);
      }
    }

    // no internet connection
    if (error.message?.toLowerCase()?.contains('socket') ?? false) {
      if (onError != null) {
        return onError(ApiException(
          message: Strings.noInternetConnection.tr,
        ));
      } else {
        return _handleError(Strings.noInternetConnection.tr);
      }
    }

    // check if the error is 500 (server problem)
    if (error.response?.statusCode == 500) {
      var exception = ApiException(
        message: Strings.serverError.tr,
        statusCode: 500,
      );

      if (onError != null) {
        return onError(exception);
      } else {
        return handleApiError(exception);
      }
    }

    var exception = ApiException(
        message: error.message ?? '',
        response: error.response,
        statusCode: error.response?.statusCode);
    if (onError != null) {
      return onError(exception);
    } else {
      return handleApiError(exception);
    }
  }

  /// handle error automaticly (if user didnt pass onError) method
  /// it will try to show the message from api if there is no message
  /// from api it will show the reason (the dio message)
  static handleApiError(ApiException apiException) {
    String msg = apiException.toString();
    Logger().w(msg);
    CustomSnackBar.showCustomErrorToast(message: msg);
  }

  /// handle errors without response (500, out of time, no internet,..etc)
  static _handleError(String msg) {
    Logger().w(msg);
    //CustomSnackBar.showCustomErrorToast(message: msg);
  }
}
