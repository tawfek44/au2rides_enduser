import 'package:injectable/injectable.dart';

import '../../../../../core/use_case/use_case.dart';
import '../../repository/gender_repository.dart';

@injectable
class ClearGenderUseCase implements UseCase<dynamic,String>{
  final GenderRepository _genderRepository;

  ClearGenderUseCase(this._genderRepository);

  @override
  call({String? param}) async {
    final response = await _genderRepository.clearGenderDataInLocalDB(tableName: param!);
    return response;
  }

}