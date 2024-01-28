import 'package:au2rides/features/enter_user_info/data/data_source/add_user_in_local/get_user_data_data_scource.dart';
import 'package:au2rides/features/enter_user_info/domain/repositories/user/get_user_info_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/repositories/user_repository.dart';
import '../../../domain/repositories/user/user_repository.dart';
import '../../data_source/add_user_in_local/add_user_in_local_db_data_source.dart';

@Injectable(as: GetUserInfoFromNetworkRepository)
class GetUserInfoRepositoryImpl extends GetUserInfoFromNetworkRepository {
  final GetUserDataFromNetworkDatasource getUserDataFromNetworkDatasource;

  GetUserInfoRepositoryImpl(this.getUserDataFromNetworkDatasource);

  @override
  getUserInfoFromNetwork() async {
   final response = await getUserDataFromNetworkDatasource.getUserDataFromNetwork();
   return response;
  }


}
