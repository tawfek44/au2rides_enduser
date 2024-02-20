import 'package:au2rides/core/storage/network/end_points.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../env.dart';
import '../../app_routes/app_routes.dart';
import '../../app_routes/app_routes_names.dart';
import '../../constants/constants.dart';
import '../../dependancy_injection/injection.dart';
import '../../error/errors_codes.dart';
import '../../repositories/user_repository.dart';


@injectable
class AuthInterceptor extends Interceptor {
  final Dio dio;

  AuthInterceptor({required this.dio});

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    if(err.response!=null){
      if (err.response?.data["code"] == HttpsStatusCode.authorizationAccessTokenExpired) {
        final newAccessToken = await renewAccessToken(
            appUrl: AppEnvironment.authAPIUrl,
            lang: getIt<UserRepository>().getUserLanguage);

        if (newAccessToken != null) {
          getIt<UserRepository>().setAccessToken(newAccessToken);
          dio.options.headers["Authorization"] =
              getIt<UserRepository>().getAccessToken;

          return handler.resolve(await _retry(err.requestOptions));
        }
      }
    }

    return super.onError(err, handler);
  }

  Future _retry(RequestOptions requestOptions) async {
    requestOptions.headers["Authorization"] = getIt<UserRepository>().getAccessToken;
    requestOptions.headers["Accept-Language"]=getIt<UserRepository>().getUserLanguage;
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers
    );
    return await dio.request(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options
    );
  }
  Future renewAccessToken({required appUrl, required lang}) async {
    try {
      final response = await dio.post(appUrl + EndPoints.renewAccessTokenEndPoint,
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
      final newAccessToken = response.data["access_token"];
      getIt<UserRepository>().setAccessToken(newAccessToken);
      return newAccessToken;
    } catch (exception) {
      NamedNavigatorImpl().push(Routes.splashScreenRoute, clean: true);
    }
    return null;
  }
}
