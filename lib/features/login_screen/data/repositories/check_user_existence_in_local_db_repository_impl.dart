import 'package:au2rides/features/login_screen/data/data_scource/check_user_existance_in_local_db_data_source.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/check_user_existence_in_local_db_repository.dart';

@Injectable(as: CheckUserExistenceInLocalDbRepository)
class CheckUserExistenceInLocalDbRepositoryImpl
    extends CheckUserExistenceInLocalDbRepository {
  final CheckUserExistInLocalDbDatasource checkUserExistInLocalDbDatasource;

  CheckUserExistenceInLocalDbRepositoryImpl(
      {required this.checkUserExistInLocalDbDatasource});

  @override
  checkUserExistenceInLocalDb({required userId}) async {
    final response = await checkUserExistInLocalDbDatasource.checkUserExistInLocalDb(userId: userId);
    return response;
  }
}
