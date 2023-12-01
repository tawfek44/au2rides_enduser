import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/features/redirection_screen/data/datasources/country_datasource.dart';
import 'package:au2rides/features/redirection_screen/data/datasources/currency_datasource.dart';
import 'package:au2rides/features/redirection_screen/data/datasources/gender_data_source.dart';
import 'package:au2rides/features/redirection_screen/domain/entity/country/country_entity.dart';
import 'package:au2rides/features/redirection_screen/domain/repository/country_repository.dart';
import 'package:au2rides/features/redirection_screen/domain/repository/currency_repository.dart';
import 'package:au2rides/features/redirection_screen/domain/repository/gender_repository.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/resources/data_state.dart';
import '../models/country/country_model.dart';

@Injectable(as: GenderRepository)
class GenderRepositoryImpl extends GenderRepository {
  final GenderDataSource _genderDataSource;

  GenderRepositoryImpl(this._genderDataSource);

  @override
  Future clearGenderDataInLocalDB({required tableName}) async {
    final response = await _genderDataSource.clearAllGenderDataFromLocalDb(
        tableName: tableName);
    return response;
  }

  @override
  downloadGenderDataFromNetworkDB({required tableDefinitions,required appLang}) async {
    final response = await _genderDataSource.downloadAllGenderDataFromNetworkDb(tableDefinitions: tableDefinitions,appLang: appLang);
    return response;
  }
}
