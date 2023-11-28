import 'package:au2rides/core/resources/data_state.dart';
import 'package:au2rides/features/language_screen/data/models/language.dart';
import 'package:au2rides/features/language_screen/domain/entities/language_entity.dart';
import 'package:au2rides/features/language_screen/domain/repositories/language_repository.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../data_sources/local/language_local_database.dart';

@Injectable(as: LanguageRepository)
class LanguageRepositoryImpl extends LanguageRepository{
  final LanguageLocalDatabase localDatabase;
  LanguageRepositoryImpl(this.localDatabase);

  @override
   getLanguages() async {
    try{
      final  response = await localDatabase.getAllLanguagesFromLocalDatabase();
      return DataSuccess(response);
    }on DioException catch(e){
      return DataFailed(e);
    }

  }


}