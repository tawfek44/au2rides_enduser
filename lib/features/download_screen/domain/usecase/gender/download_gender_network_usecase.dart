import 'package:injectable/injectable.dart';

import '../../../../../core/use_case/use_case.dart';
import '../../repository/gender_repository.dart';

@injectable
class DownloadGenderUseCase implements UseCase<dynamic,dynamic>{
  final GenderRepository _genderRepository;

  DownloadGenderUseCase(this._genderRepository);

  @override
  call({param}) async {
    final response = await _genderRepository.downloadGenderDataFromNetworkDB(appLang:param[0] ,tableDefinitions: param[1]);
    return response;
  }

}