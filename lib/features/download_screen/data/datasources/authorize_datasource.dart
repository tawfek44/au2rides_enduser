import 'package:au2rides/core/storage/local/sqlite.dart';
import 'package:au2rides/core/storage/network/dio_client.dart';
import 'package:au2rides/env.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/constants/constants.dart';


abstract class AuthorizeDataSource{
  authorizeNetworkDatabase({required data});
}
@Injectable(as: AuthorizeDataSource)
class AuthorizeDataSourceImpl implements AuthorizeDataSource{
  final String baseUrl = AppEnvironment.authAPIUrl;
  @override
  authorizeNetworkDatabase({required data}) async {
    final response = await DioClient().postData(endPoint: authorizeEndPoint, data: data,apiUrl: baseUrl);
    return response;
  }


}
