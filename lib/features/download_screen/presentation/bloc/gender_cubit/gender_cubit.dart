import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../splash_screen/data/models/check_primary_data_body_model.dart';
import '../../../data/models/currency/currency_model.dart';
import '../../../data/models/user_gender/user_gender_model.dart';
import '../../../domain/usecase/currency/get_all_currencies_usecase.dart';
import '../../../domain/usecase/currency/save_currencies_in_local_db_usecase.dart';
import '../../../domain/usecase/gender/clear_gender_local_usecase.dart';
import '../../../domain/usecase/gender/download_gender_network_usecase.dart';
import '../../../domain/usecase/gender/save_gender_data_usecase.dart';

part 'gender_state.dart';

part 'gender_cubit.freezed.dart';

@injectable
class GenderCubit extends Cubit<GenderState> {
  GenderCubit(this.clearGenderUseCase, this.downloadGenderUseCase,
      this.saveGenderDataInLocalDb)
      : super(const GenderState.initial());
  final ClearGenderUseCase clearGenderUseCase;
  final DownloadGenderUseCase downloadGenderUseCase;
  final SaveGenderDataInLocalDb saveGenderDataInLocalDb;

  Future clearGenderInLocalDatabase({required String tableName,required languageId}) async {
    try {
      await clearGenderUseCase(param: [tableName,languageId]);
    } catch (e) {
      print(e);
    }
  }

  Future getAllGenderFromNetworkDB(
      {required String appLang, required tableDefinitions}) async {
    try {
      tableDefinitions =
          (tableDefinitions as CheckPrimaryDataBodyModel).toJson();

      final response =
          await downloadGenderUseCase(param: [appLang, tableDefinitions]);
      return response.data["data_rows"]
          .cast<Map<String, dynamic>>()
          .map((e) => UserGenderModel.fromJson(e))
          .toList();
    } catch (e) {
      print(e);
    }
  }

  Future saveGenderDataInLocalDB(
      {required String tableName, required values}) async {
    try {
      final response =
          await saveGenderDataInLocalDb(param: [tableName,values],);
      return response;
    } catch (e) {
      print(e);
    }
  }
}
