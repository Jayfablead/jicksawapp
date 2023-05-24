import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jicksaw/Widget/CustomExpection.dart';
import 'package:jicksaw/Widget/const.dart';
import 'package:jicksaw/Widget/response.dart';

class authprovider with ChangeNotifier{
  Map<String, String> headers = {
    'Authorization': 'hXuRUGsEGuhGf6KG',
  };
  Future<http.Response> loginapi(Map<String, String> bodyData) async {
    const url = '$baseUrl/?action=login_player';
    var responseJson;
    final response = await http
        .post(Uri.parse(url), body: bodyData, headers: headers)
        .timeout(
      const Duration(seconds: 30),
      onTimeout: () {
        throw const SocketException('Something went wrong');
      },
    );
    responseJson = responses(response);
    return responseJson;
  }
  Future<http.Response> signupapi(Map<String, dynamic> bodyData) async {
    const url = '$baseUrl/?action=signup_player';
    var responseJson;
    final response = await http
        .post(Uri.parse(url), body: bodyData, headers: headers)
        .timeout(
      const Duration(seconds: 30),
      onTimeout: () {
        throw const SocketException('Something went wrong');
      },
    );
    responseJson = responses(response);
    return responseJson;
  }
  Future<http.Response> profileviewapi(Map<String, dynamic> bodyData) async {
    const url = '$baseUrl/?action=profile_view_player';
    var responseJson;
    final response = await http
        .post(Uri.parse(url), body: bodyData, headers: headers)
        .timeout(
      const Duration(seconds: 30),
      onTimeout: () {
        throw const SocketException('Something went wrong');
      },
    );
    responseJson = responses(response);
    return responseJson;
  }
  Future<http.Response> profileupdateapi(Map<String, String> bodyData) async {
    const url = '$baseUrl/?action=profile_update_player';
    var responseJson;
    try {
      final imageUploadRequest = http.MultipartRequest('POST', Uri.parse(url));
      imageUploadRequest.headers.addAll(headers);
      if (bodyData['img_file']?.isNotEmpty ?? false) {
        final file = await http.MultipartFile.fromPath(
            'img_file', bodyData['img_file'] ?? '');
        imageUploadRequest.files.add(file);
      }
      imageUploadRequest.fields.addAll(bodyData);
      final streamResponse = await imageUploadRequest.send();
      responseJson = responses(await http.Response.fromStream(streamResponse));
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }
  Future<http.Response> forgotpassapi(Map<String, String> bodyData) async {
    const url = '$baseUrl/?action=forgot_password';
    var responseJson;
    final response = await http
        .post(Uri.parse(url), body: bodyData, headers: headers)
        .timeout(
      const Duration(seconds: 30),
      onTimeout: () {
        throw const SocketException('Something went wrong');
      },
    );
    responseJson = responses(response);
    return responseJson;
  }
}