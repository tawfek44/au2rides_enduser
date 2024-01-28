import 'package:au2rides/features/enter_user_info/data/data_source/add_user_in_local/get_user_data_data_scource.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/repositories/user_repository.dart';
import '../../../domain/repositories/user/user_repository.dart';
import '../../data_source/add_user_in_local/add_user_in_local_db_data_source.dart';

@Injectable(as: UserAccountRepository)
class UserRepositoryImpl extends UserAccountRepository {
  final AddUserInLocalDbDatasource addUserInLocalDbDatasource;

  UserRepositoryImpl(this.addUserInLocalDbDatasource);

  @override
  addUserInLocalDb({required userData}) async {
    final response = await addUserInLocalDbDatasource.addUserInLocalDb(userData: userData);
    return response;
  }
}
