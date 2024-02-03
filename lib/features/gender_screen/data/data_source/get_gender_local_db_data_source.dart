import 'package:au2rides/core/storage/local/sqlite.dart';
import 'package:au2rides/core/storage/network/dio_client.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/dependancy_injection/injection.dart';
import '../../../../../core/repositories/user_repository.dart';
import '../../../../../env.dart';

abstract class GetAllGenderFromLocalDbDatasource {
  getAllGenderFromLocalDb({required tableName});
}

@Injectable(as: GetAllGenderFromLocalDbDatasource)
class AddUserInLocalDbDatasourceImp implements GetAllGenderFromLocalDbDatasource {
  @override
  getAllGenderFromLocalDb({required tableName}) async {
   final response = await Au2ridesDatabase.instance.getAllDate(tableName: tableName);
   return response;
  }

}
