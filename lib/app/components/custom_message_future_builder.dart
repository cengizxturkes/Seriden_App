import 'package:flutter/material.dart';

import 'custom_future_builder.dart';

class CustomMessageFutureBuilder<T> extends StatelessWidget {
  Future<T> future;
  OnError? onError;
  OnDataEmpty? onDataEmpty;
  OnSuccess<T> onSuccess;
  OnLoading? onloading;
  CustomMessageFutureBuilder(
      {required this.future,
      this.onError,
      this.onloading,
      required this.onSuccess,
      this.onDataEmpty});
  Future<T?> getFuture() async {
    try {
      return future;
    } catch (e) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FutureBuilder<T?>(
        future: getFuture(),
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

          return onSuccess(data.data as T);
        });
  }
}
