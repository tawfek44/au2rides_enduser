import 'package:au2rides/core/storage/network/dio_client.dart';
import 'package:au2rides/env.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/constants/constants.dart';

@injectable
class CountryDataSource{
   getAllCountriesFromAPI() async {
    final response = await DioClient().fetchData(endPoint:allCountriesEndpoint);
    return response;
  }
}