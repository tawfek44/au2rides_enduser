import 'package:dio/dio.dart';
import '../../../env.dart';

class DioClient {
  static final DioClient _singleton = DioClient._internal();

  factory DioClient() {
    return _singleton;
  }

  DioClient._internal();
  final Dio dio = Dio()..interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

  //DioClient._();
  final String baseUrl = AppEnvironment.baseAPIUrl;

  Future fetchPrimaryData({required String endPoint, required String lang,required tableDefinitions}) async {
    final response = await dio.post(baseUrl + endPoint,options: Options(
      contentType: Headers.jsonContentType,
      headers: {
        'Accept-Language':lang
      },
    ),
      data: tableDefinitions
    );
    return response;
  }
  Future postData({required String endPoint, required String lang,required dynamic data}) async {
    var link = baseUrl + endPoint;
    final response = await dio.post(link,options: Options(
      contentType: Headers.jsonContentType,
        headers: {
          'Accept-Language':lang,
        },
    ),data: data
    );
    return response;
  }


}
