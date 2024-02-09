import 'package:au2rides/core/storage/local/sqlite.dart';
import 'package:au2rides/core/storage/network/dio_client.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/dependancy_injection/injection.dart';
import '../../../../../core/repositories/user_repository.dart';
import '../../../../../core/storage/local/table_names.dart';
import '../../../../../env.dart';

abstract class AddUserInLocalDbDatasource {
  addUserInLocalDb({required userData});
}

@Injectable(as: AddUserInLocalDbDatasource)
class AddUserInLocalDbDatasourceImp implements AddUserInLocalDbDatasource {
  @override
  addUserInLocalDb({required userData}) async {
    final response = await Au2ridesDatabase.instance
        .insert(tableName: TableNames.usersTableName, values: userData);
    return response;
  }
}
