import 'dart:async';
import 'dart:convert';

import 'package:covid_tracking_app/base/common/error/exceptions.dart';
import 'package:covid_tracking_app/base/common/models/error/validation_exception_body.dart';
import 'package:covid_tracking_app/base/common/utils/logger.dart';
import 'package:http/http.dart' as http;

class AuthHttpClient extends http.BaseClient {
  final http.Client client;
  AuthHttpClient({
    required this.client,
  });

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    return client.send(request);
  }

  Future<dynamic> getRequest({
    required String url,
    bool withCredential = false,
    Map<String, String>? queryParams,
    Map<String, String>? defaultHeaders,
  }) async {
    try {
      if (defaultHeaders == null) defaultHeaders = {'content-type': 'application/json'};

      if (queryParams == null) {
        final http.Response response = await this.client.get(Uri.parse(url), headers: defaultHeaders).timeout(const Duration(seconds: 10));
        return _response(response);
      } else {
        String queryString = Uri(queryParameters: queryParams).query;
        var requestUrl = url + '/:' + queryString;
        MLogger.wtf(requestUrl);
        final http.Response response = await this.client.get(Uri.parse(requestUrl), headers: defaultHeaders).timeout(const Duration(seconds: 10));
        return _response(response);
      }
    } on TimeoutException {
      _onTimeOut();
      rethrow;
    }
  }

  Future<dynamic> getNewsRequest({
    required String url,
  }) async {
    try {
      final defaultHeaders = {
        'x-rapidapi-key': '2ba984bb43msh5e2e8e15fdd118cp1ac18ejsn98e0db1de44c',
        'x-rapidapi-host': 'vaccovid-coronavirus-vaccine-and-treatment-tracker.p.rapidapi.com'
      };

      final http.Response response = await this.client.get(Uri.parse(url), headers: defaultHeaders).timeout(const Duration(seconds: 10));
      return _response(response);
    } on TimeoutException {
      _onTimeOut();
      rethrow;
    }
  }

  dynamic _response(http.Response response) {
    if (response.statusCode != 200) {
      print('HTTP Request Failed with status code: ${response.statusCode}');
      print(response.request?.url);
      print(response.reasonPhrase);
      print(response.body);
    }
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        return responseJson;
      case 400:
        throw ServerValidationException(ValidationExceptionBody.fromJson(response.body));
      case 401:
      case 403:
        print('UnAuthorizedException');
        //SnackBarService.showError('Invalid session, you need to re-login');
        //Get.find<AuthController>().signOut();
        throw UnAuthorizedException();
      case 500:

      default:
        throw ServerException();
    }
  }

  _onTimeOut() {
    print('request is to long');
  }
}
