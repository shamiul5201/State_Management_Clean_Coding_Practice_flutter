import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:state_management/data/exceptions/app_exceptions.dart';
import 'package:state_management/data/network/base_api_services.dart';

class NetworkApiServices implements BaseApiServices {

  @override
  Future<dynamic> getApi(String url) async{
    dynamic responseJson;
    try {
      final response = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 20));
      responseJson = returnResponse(response);

    } on SocketException{
      throw NoInternetException();
    } on TimeoutException {
      throw FetchDataException();
    }

    return responseJson;


  }

  @override
  Future<dynamic> postApi(String url, dynamic data) async{

    dynamic responseJson;
    try {
      final response = await http.post(Uri.parse(url),
          body: data
      ).
      timeout(const Duration(seconds: 20));
      responseJson = returnResponse(response);

    } on SocketException{
      throw NoInternetException();
    } on TimeoutException {
      throw FetchDataException();
    }

    return responseJson;


  }

  @override
  Future<dynamic> deleteApi(String url) async{
    dynamic responseJson;
    try {
      final response = await http.delete(Uri.parse(url)).timeout(const Duration(seconds: 20));
      responseJson = returnResponse(response);

    } on SocketException{
      throw NoInternetException();
    } on TimeoutException {
      throw FetchDataException();
    }

    return responseJson;

  }


  dynamic returnResponse (http.Response response){

    switch (response.statusCode){
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 401:
        throw BadRequestException(response.body.toString());
      case 500:
      case 404:
        throw UnauthorisedException(response.body.toString());
      default:
        throw FetchDataException('Error occurred while communicating with server');
    }


  }

}