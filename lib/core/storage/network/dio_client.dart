import 'package:dio/dio.dart';
import '../../../env.dart';

class DioClient {
  final Dio dio = Dio();

  //DioClient._();
  final String baseUrl = AppEnvironment.baseAPIUrl;

  Future fetchData({required String endPoint, required String lang}) async {
    final response = await dio.get(baseUrl + endPoint,options: Options(
      headers: {
        'Accept-Language':lang
      }
    ));
    return response;
  }
  Future postData({required String endPoint, required String lang,required dynamic data}) async {
    final response = await dio.post(baseUrl + endPoint,options: Options(
      contentType: Headers.jsonContentType,
        headers: {
          'Accept-Language':lang,
        },
    ),data: data
    );
    return response;
  }


}
