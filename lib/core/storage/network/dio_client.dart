import 'package:au2rides/core/app_routes/app_routes.dart';
import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/dependancy_injection/injection.dart';
import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/core/resources/data_state.dart';
import 'package:au2rides/core/storage/network/auth_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import '../../../env.dart';
import '../../app_routes/app_routes_names.dart';
import '../../error/errors_codes.dart';
import '../../error/failure.dart';

class DioClient {
  final String baseUrl = AppEnvironment.baseAPIUrl;
  final Dio dio = Dio();

  DioClient() {
    dio.interceptors.add(AuthInterceptor(dio: dio));
  }

  fetchPrimaryData(
      {required String endPoint,
      required String lang,
      required tableDefinitions}) async {
    try {
      final response = await dio.post(baseUrl + endPoint,
          options: Options(
            contentType: Headers.jsonContentType,
            headers: {
              'Accept-Language': lang,
              'Authorization': getIt<UserRepository>().getAccessToken
            },
          ),
          data: tableDefinitions);
      return Right(response);
    } on DioException catch (e, _) {
      if (e.type == DioExceptionType.badResponse) {
        return Left(Failure(
            message: e.response?.data["message"],
            code: e.response?.data["code"],
            aurtraceId: e.response?.data["autrace_id"],
            errorTitle: e.response?.data["error_title"],
            errorUserMessage: e.response?.data["error_user_message"],
            httpStatusCode: e.response?.data["http_status_code"]));
      } else {
        return Left(Failure(message: e.error.toString()));
      }
    }
  }

  Future postData(
      {required String endPoint,
      String? lang,
      required dynamic data,
      required apiUrl,
      required authorizationToken}) async {
    var link = apiUrl + endPoint;

    try {
      final response = await dio.post(link,
          options: Options(
            contentType: Headers.jsonContentType,
            headers: {
              'Accept-Language': lang,
              'Authorization': authorizationToken
            },
          ),
          data: data);
      if (response.statusCode == 200) {
        return Right(response);
      } else {
        return Left(Failure(message: response.statusMessage!));
      }
    } on DioException catch (e, _) {
      if (e.type == DioExceptionType.badResponse) {
        return Left(Failure(
            message: e.response?.data["message"],
            code: e.response?.data["code"],
            aurtraceId: e.response?.data["autrace_id"],
            errorTitle: e.response?.data["error_title"],
            errorUserMessage: e.response?.data["error_user_message"],
            httpStatusCode: e.response?.data["http_status_code"]));
      } else {
        return Left(Failure(message: e.error.toString()));
      }
    }
//DioExceptionType.badResponse
  }

  Future getData(
      {required String endPoint,
      String? lang,
      dynamic data,
      required apiUrl,
      required authorizationToken}) async {
    var link = apiUrl + endPoint;

    try {
      final response = await dio.get(link,
          options: Options(
            contentType: Headers.jsonContentType,
            headers: {
              'Accept-Language': lang,
              'Authorization': authorizationToken
            },
          ),
          data: data);
      if (response.statusCode == 200) {
        return Right(response);
      } else {
        return Left(Failure(message: response.statusMessage!));
      }
    } on DioException catch (e, _) {
      if (e.type == DioExceptionType.badResponse) {
        return Left(Failure(
            message: e.response?.data["message"],
            code: e.response?.data["code"],
            aurtraceId: e.response?.data["autrace_id"],
            errorTitle: e.response?.data["error_title"],
            errorUserMessage: e.response?.data["error_user_message"],
            httpStatusCode: e.response?.data["http_status_code"]));
      } else {
        return Left(Failure(message: e.error.toString()));
      }
    }
//DioExceptionType.badResponse
  }

}
