import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

// ignore: camel_case_typ
class DioHelper {
  static Dio dio = Dio(BaseOptions(
    //here will used the main url of the server
    baseUrl: 'http://192.168.1.10/Nplanet/api',
    receiveDataWhenStatusError: true,
  ));

  static init() {}

  static Future<Response> getdata({
    @required String url,
    @required Map<String, dynamic> query,
    String lang = 'en',
    String token,
  }) async {
    //here will use the method of the server that will used
    // ignore: unnecessary_statements
    dio.options.headers = {'lang': lang, 'token': token};

    return await dio.get(
      url,
      queryParameters: query,
    );
  }

  // ignore: invalid_required_positional_param
  static Future<Response> postdata({
    @required String url,
    Map<String, dynamic> query,
    @required Map<String, dynamic> data,
    String lang = 'en',
  }) async {
    dio.options.headers = {
      'lang': lang,
    };
    FormData body = FormData.fromMap(data);
    print(data);
    return dio.post(url, queryParameters: query, data: body);
  }
}
