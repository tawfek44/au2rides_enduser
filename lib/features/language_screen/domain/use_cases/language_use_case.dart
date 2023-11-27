import 'package:au2rides/core/resources/data_state.dart';
import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/language_screen/domain/entities/language_entity.dart';
import 'package:au2rides/features/language_screen/domain/repositories/language_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetLanguagesUseCase implements UseCase<dynamic,void>{
  final LanguageRepository _languageRepository;


  GetLanguagesUseCase(this._languageRepository);

  @override
   call({void param}) {
    return _languageRepository.getLanguages();
  }


}