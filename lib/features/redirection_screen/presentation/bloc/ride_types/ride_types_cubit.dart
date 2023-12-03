import 'package:au2rides/features/redirection_screen/data/models/ride_types/ride_types_model.dart';
import 'package:au2rides/features/redirection_screen/domain/usecase/ride_types/download_ride_types_network_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../splash_screen/data/models/check_primary_data_body_model.dart';
import '../../../domain/usecase/ride_types/clear_ride_types_local_usecase.dart';
import '../../../domain/usecase/ride_types/save_ride_types_data_usecase.dart';

part 'ride_types_state.dart';

part 'ride_types_cubit.freezed.dart';

@injectable
class RideTypesCubit extends Cubit<RideTypesState> {
  RideTypesCubit(this.clearRideTypesUseCase, this.downloadRideTypesUseCase,
      this._saveRideTypesDataInLocalDbUseCase)
      : super(const RideTypesState.initial());
  final ClearRideTypesUseCase clearRideTypesUseCase;
  final DownloadRideTypesUseCase downloadRideTypesUseCase;
  final SaveRideTypesDataInLocalDbUseCase _saveRideTypesDataInLocalDbUseCase;

  Future clearRideTypesInLocalDatabase({required String tableName}) async {
    try {
      await clearRideTypesUseCase(param: tableName);
    } catch (e) {
      print(e);
    }
  }

  Future getRideTypesFromNetworkDB(
      {required String appLang, required tableDefinitions}) async {
    try {
      tableDefinitions =
          (tableDefinitions as CheckPrimaryDataBodyModel).toJson();

      final response =
          await downloadRideTypesUseCase(param: [appLang, tableDefinitions]);
      return response.data["data_rows"]
          .cast<Map<String, dynamic>>()
          .map((e) => RideTypesModel.fromJson(e))
          .toList();
    } catch (e) {
      print(e);
    }
  }

  Future saveRideTypesDataInLocalDB(
      {required String tableName, required values}) async {
    try {
      final response = await _saveRideTypesDataInLocalDbUseCase(
        param: [tableName, values],
      );
      return response;
    } catch (e) {
      print(e);
    }
  }
}
