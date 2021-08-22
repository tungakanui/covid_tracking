import 'dart:async';

import 'package:covid_tracking_app/base/common/error/exceptions.dart';
import 'package:covid_tracking_app/base/common/http/auth_http_client.dart';
import 'package:dartz/dartz.dart';


abstract class BaseRemoteCommandService {
  final AuthHttpClient client;
  BaseRemoteCommandService(this.client);

  Future<Either<Exception, Map<String, dynamic>>> sendGetRequest(
    String url, [
    bool withCredential = false,
  ]) async {
    try {
      var response = await client.getRequest(
        url: url,
        withCredential: withCredential,
      );
      return right(response);
    } on ServerValidationException catch (e) {
      return left(e);
    } on TimeoutException catch (e) {
      return left(e);
    } on Exception {
      return left(ServerException());
    }
  }

}
