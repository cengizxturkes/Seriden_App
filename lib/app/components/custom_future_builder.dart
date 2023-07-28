import 'package:flutter/material.dart';

typedef OnSuccess<T> = Widget Function(T data);
typedef OnError = Widget Function(String msg);
typedef OnDataEmpty = Widget Function();

class CustomFutureBuilder<T> extends StatelessWidget {
  Future<T> future;
  OnError? onError;
  OnDataEmpty? onDataEmpty;
  OnSuccess<T> onSuccess;
  CustomFutureBuilder(
      {required this.future,
      this.onError,
      required this.onSuccess,
      this.onDataEmpty});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FutureBuilder<T>(
        future: future,
        builder: (context, data) {
          if (data.connectionState != ConnectionState.done) {
            return Center(
              child: CircularProgressIndicator(
                color: Theme.of(context).colorScheme.primary,
              ),
            );
          }
          if (data.data == null) {
            if (onError != null) {
              return onError!("data not found");
            }
            return Container(
              child: Text("data not found"),
            );
          }

          return onSuccess(data.data as T);
        });
  }
}
