import 'package:injectable/injectable.dart';

import '../../../../../core/use_case/use_case.dart';
import '../../repository/gender_repository.dart';

@injectable
class ClearGenderUseCase implements UseCase<dynamic,dynamic>{
  final GenderRepository _genderRepository;

  ClearGenderUseCase(this._genderRepository);

  @override
  call({ param}) async {
    final response = await _genderRepository.clearGenderDataInLocalDB(tableName: param[0],languageId: param[1]);
    return response;
  }

}