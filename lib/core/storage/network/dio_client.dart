import 'package:au2rides/core/dependancy_injection/injection.dart';
import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import '../../../env.dart';
import '../../error/failure.dart';

class DioClient {
  static final DioClient _singleton = DioClient._internal();

  factory DioClient() {
    return _singleton;
  }

  DioClient._internal();
  final Dio dio = Dio()..interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

  //DioClient._();
  final String baseUrl = AppEnvironment.baseAPIUrl;

   fetchPrimaryData({required String endPoint, required String lang,required tableDefinitions}) async {
    final response = await dio.post(baseUrl + endPoint,options: Options(
      contentType: Headers.jsonContentType,
      headers: {
        'Accept-Language':lang,
        'Authorization':'Bearer ${getIt<UserRepository>().getUserToken}'
      },
    ),
      data: tableDefinitions
    );
      return response;

  }
  Future postData({required String endPoint, String? lang,required dynamic data,required apiUrl}) async {
    var link = apiUrl + endPoint;
    final response = await dio.post(link,options: Options(
      contentType: Headers.jsonContentType,
        headers: {
          'Accept-Language':lang,
          'Authorization':getIt<UserRepository>().getUserToken
        },
    ),data: data
    );
    return response;
  }


}
