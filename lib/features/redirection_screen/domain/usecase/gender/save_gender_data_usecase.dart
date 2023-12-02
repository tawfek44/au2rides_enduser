import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/redirection_screen/domain/repository/gender_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SaveGenderDataInLocalDb extends UseCase<dynamic,dynamic>{
  final GenderRepository _genderRepository;

  SaveGenderDataInLocalDb(this._genderRepository);

  @override
  Future call({param}) async {
   final response = await _genderRepository.saveGenderDataInLocalDB(values: param[1], tableName: param[0]);
   return response;
  }

}