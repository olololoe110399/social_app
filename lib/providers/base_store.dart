import 'package:flutter/material.dart';

class BaseStore extends ChangeNotifier {
  void Function(Object)? handleError;
  int _loadingCount = 0;
  bool _loading = false;
  bool get loading => _loading;

  void runBlocking<T>(
    Future<T> request, {
    bool showLoading = true,
    void Function()? doBefore,
    void Function(T)? doOnSuccess,
    void Function(Object)? doOnError,
    void Function()? doWhenComplete,
  }) {
    doBefore?.call();
    _showLoading(showLoading);
    request.then((newData) {
      doOnSuccess?.call(newData);
    }).catchError((error) {
      doOnError?.call(error);
      handleError?.call(error);
    }).whenComplete(() {
      _hideLoading(showLoading);
      doWhenComplete?.call();
    });
  }

  void runBlockings<T>(
    List<Future<T>> requests, {
    bool showLoading = true,
    void Function()? doBefore,
    void Function(List<T?>)? doOnSuccess,
    void Function(Object)? doOnError,
    void Function()? doWhenComplete,
  }) {
    doBefore?.call();
    _showLoading(showLoading);
    Future.wait(requests).then((newData) {
      doOnSuccess?.call(newData);
    }).catchError((error) {
      doOnError?.call(error);
      handleError?.call(error);
    }).whenComplete(() {
      _hideLoading(showLoading);
      doWhenComplete?.call();
    });
  }

  void _showLoading(bool isShowLoading) {
    if (isShowLoading) {
      if (++_loadingCount == 1) {
        _loading = true;
      }
    }
  }

  void _hideLoading(bool isShowLoading) {
    if (isShowLoading) {
      if (--_loadingCount == 0) {
        _loading = false;
      }
    }
  }
}
