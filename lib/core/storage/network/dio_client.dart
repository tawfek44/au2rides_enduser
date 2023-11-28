
import 'package:dio/dio.dart';
import '../../../env.dart';

class DioClient{
  final Dio dio=Dio();
  //DioClient._();
  final String baseUrl= AppEnvironment.baseAPIUrl;


  Future fetchData({required String endPoint}) async {
    final response = await dio.get(baseUrl+endPoint);
    return response;
  }


}