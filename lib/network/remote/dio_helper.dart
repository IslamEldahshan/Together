import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://thisismyfirstapi.000webhostapp.com/api/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    required String path,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio!.options.headers = {
      'authorization':token,
    };
    return await dio!.get(
      path,
      queryParameters: query,
    );
  }

  static Future<Response> postData({
    required String path,
    required Map<String, dynamic> data,
    String? token
  }) async {
    dio!.options.headers = {
      'authorization':token,
      'accept': 'application/json'
    };
    return await dio!.post(
      path,
      data: data,
    );
  }

}
