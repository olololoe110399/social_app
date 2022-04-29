import 'dart:io';

import 'package:social_app/errors/app_exception.dart';
import 'package:social_app/errors/exception_map.dart';

class AppExceptionMap implements ExceptionMap {
  @override
  AppException map(Object? error) {
    switch (error) {
      case SocketException:
        throw NotInternet('No Internet connect');
      case RemoteException:
        throw RemoteException(error.toString());
      default:
        throw FetchDataException('Something error: ${error.toString()}');
    }
  }
}
