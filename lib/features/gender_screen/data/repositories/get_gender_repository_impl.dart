import 'package:au2rides/features/enter_user_info/data/data_source/add_user_in_local/get_user_data_data_scource.dart';
import 'package:au2rides/features/enter_user_info/domain/repositories/user/get_user_info_repository.dart';
import 'package:au2rides/features/gender_screen/data/data_source/get_gender_local_db_data_source.dart';
import 'package:au2rides/features/gender_screen/domain/repositories/get_gender_repository.dart';
import 'package:injectable/injectable.dart';
@Injectable(as: GetGendersFromLocalDbRepository)
class GetGenderFromLocalRepositoryImpl extends GetGendersFromLocalDbRepository {
  final GetAllGenderFromLocalDbDatasource getAllGenderFromLocalDbDatasource;

  GetGenderFromLocalRepositoryImpl(this.getAllGenderFromLocalDbDatasource);

  @override
  getGendersFromLocalDb({required tableName}) async {
   final response = await getAllGenderFromLocalDbDatasource.getAllGenderFromLocalDb(tableName: tableName);
   return response;
  }




}
