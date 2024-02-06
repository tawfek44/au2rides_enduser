import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/dependancy_injection/injection.dart';
import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/core/resources/data_state.dart';
import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import '../../../env.dart';
import '../../error/errors_codes.dart';
import '../../error/failure.dart';

class DioClient {
  static final DioClient _singleton = DioClient._internal();

  factory DioClient() {
    return _singleton;
  }

  DioClient._internal();

  final Dio dio = Dio()
    ..interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

  //DioClient._();
  final String baseUrl = AppEnvironment.baseAPIUrl;

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
      if (e.type == DioExceptionType.badResponse &&
          e.response?.data["http_status_code"] ==
              authorizationAccessTokenExpired) {
        final renewAccessTokenResponse =
        await renewAccessToken(lang: lang, appUrl: baseUrl);

        getIt<UserRepository>().setAccessToken(
            renewAccessTokenResponse.data["token"]["access_token"]);

        await fetchPrimaryData(
          lang: lang,endPoint: endPoint,tableDefinitions: tableDefinitions
        );
      }
      else if (e.type == DioExceptionType.badResponse) {
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
      if (e.type == DioExceptionType.badResponse &&
          e.response?.data["http_status_code"] ==
              authorizationAccessTokenExpired) {
        final renewAccessTokenResponse =
        await renewAccessToken(lang: lang, appUrl: apiUrl);
        getIt<UserRepository>().setAccessToken(
            renewAccessTokenResponse.data["token"]["access_token"]);
        await postData(
            endPoint: endPoint,
            apiUrl: apiUrl,
            lang: lang,
            data: data,
            authorizationToken: getIt<UserRepository>().getAccessToken);
      }
      else if (e.type == DioExceptionType.badResponse) {
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
      if (e.type == DioExceptionType.badResponse &&
          e.response?.data["http_status_code"] ==
              authorizationAccessTokenExpired) {
        final renewAccessTokenResponse =
            await renewAccessToken(lang: lang, appUrl: apiUrl);
        getIt<UserRepository>().setAccessToken(
            renewAccessTokenResponse.data["token"]["access_token"]);
        await getData(
            endPoint: endPoint,
            apiUrl: apiUrl,
            lang: lang,
            data: data,
            authorizationToken: getIt<UserRepository>().getAccessToken);
      }
      else if (e.type == DioExceptionType.badResponse) {
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

  Future renewAccessToken({required appUrl, required lang}) async {
    try {
      final response = await dio.post(appUrl + renewAccessTokenEndPoint,
          options: Options(
            contentType: Headers.jsonContentType,
            headers: {
              'Accept-Language': lang,
              'Authorization': getIt<UserRepository>().getRefreshToken
            },
          ),
          data: {
            "refresh_token": getIt<UserRepository>().getRefreshToken,
            "grant_type": "refresh_token"
          });
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
  }
}
