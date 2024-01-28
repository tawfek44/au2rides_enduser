import 'package:au2rides/core/storage/local/sqlite.dart';
import 'package:au2rides/core/storage/network/dio_client.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/dependancy_injection/injection.dart';
import '../../../../core/repositories/user_repository.dart';
import '../../../../env.dart';


abstract class CheckUserExistInLocalDbDatasource {
  checkUserExistInLocalDb({required userId});
}

@Injectable(as: CheckUserExistInLocalDbDatasource)
class CheckUserExistInLocalDbDatasourceImp
    implements CheckUserExistInLocalDbDatasource {
  @override
  checkUserExistInLocalDb({required userId}) async {
    final response = await Au2ridesDatabase.instance.getAllDateWithCondition(
        tableName: usersTableName, where: 'user_id = ?', whereArgs: [userId]);
    return response;
  }
}
