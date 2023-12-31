import 'package:flutter/material.dart';

typedef OnSuccess<T> = Widget Function(T data);
typedef OnError = Widget Function(String msg);
typedef OnDataEmpty = Widget Function();
typedef OnLoading = Widget Function();

class CustomFutureBuilder<T> extends StatelessWidget {
  Future<T> future;
  OnError? onError;
  OnDataEmpty? onDataEmpty;
  OnSuccess<T> onSuccess;
  OnLoading? onloading;
  CustomFutureBuilder(
      {required this.future,
      this.onError,
      this.onloading,
      required this.onSuccess,
      this.onDataEmpty});
  Future<T?> getFuture() async {
    try {
      return await future;
    } catch (e) {
      print(e);
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FutureBuilder<T?>(
        future: future,
        builder: (context, data) {
          if (data.connectionState != ConnectionState.done) {
            if (onloading != null) {
              return onloading!();
            }
            return Center(
              child: CircularProgressIndicator(
                color: Theme.of(context).colorScheme.primary,
              ),
            );
          }
          if (data.data == null ||
              (data.data is List && (data.data as List).isEmpty)) {
            if (onError != null) {
              return Container(
                child: Center(
                    child: Text(
                  "Bulunamadı",
                  style: TextStyle(color: Colors.blue, fontSize: 30),
                )),
              );
            }
            return Container(
              child: Center(
                  child: Text(
                "Bulunamadı",
                style: TextStyle(color: Colors.blue, fontSize: 100),
              )),
            );
          }

          return onSuccess(data.data as T);
        });
  }
}
