import 'package:au2rides/features/enter_user_info/domain/repositories/user/user_body_repository.dart';
import 'package:injectable/injectable.dart';
import '../../data_source/add_user_in_local/add_user_in_local_db_data_source.dart';
import '../../data_source/add_user_to_server/add_user_to_server_data_scource.dart';

@Injectable(as: UpdateUserRepository)
class UpdateUserRepositoryImpl extends UpdateUserRepository {
  final AddUserToNetworkDatasource addUserToNetworkDatasource;

  UpdateUserRepositoryImpl(this.addUserToNetworkDatasource);

  @override
  updateUserData({required data, required language}) async {
    final response = await addUserToNetworkDatasource.addUserToNetwork(
        data: data, language: language);
    return response;
  }
}
