/*
import 'package:dio/dio.dart';

class DioHelper
{
  static Dio?dio;
  static init()
  {
    BaseOptions(
      baseUrl: "http://192.168.1.10:8000/api/lungtext",
      receiveDataWhenStatusError: true,

    );
  }
  static Future <Response>getData(
  {
  required String url,
    Map<String,dynamic>?quary,
    String? token,
    String?vary ,

})async
  {
    dio!.options.headers={
      // Allow: GET, OPTIONS
      'Content-Type': 'application/json',
      'Vary': 'Accept',
    };
    return await dio!.get(
        url,
      queryParameters: quary??null,
    );
  }
  static Future <Response>postData(
      {
        required String url,
        Map<String,dynamic>?quary,
        String? token,
        String?vary, Map<String, String> ?data ,

      })async
  {
    dio!.options.headers={
      // Allow: GET, OPTIONS
      'Content-Type': 'application/json',
      'Vary': 'Accept',
    };
    return await dio!.post(
      url,
      queryParameters: quary??null,
    );
  }

}
*/
