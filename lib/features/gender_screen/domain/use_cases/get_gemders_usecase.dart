import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/enter_user_info/domain/repositories/user/get_user_info_repository.dart';
import 'package:au2rides/features/gender_screen/domain/repositories/get_gender_repository.dart';
import 'package:au2rides/features/splash_screen/domain/repositories/check_primary_data_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dependancy_injection/injection.dart';

@injectable
class GetGenderFromLocalDbUseCase extends UseCase<dynamic, dynamic> {
  final GetGendersFromLocalDbRepository getGendersFromLocalDbRepository;

  GetGenderFromLocalDbUseCase(this.getGendersFromLocalDbRepository);

  @override
  Future call({param}) async {
    final response = await getGendersFromLocalDbRepository.getGendersFromLocalDb(tableName: param);
    return response;
  }

}