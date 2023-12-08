import 'package:au2rides/features/download_screen/data/models/payment_methods/payment_methods_model.dart';
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/clear_payment_methods_local_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/download_payment_methods_network_usecase.dart';
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/save_payment_methods_data_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../splash_screen/data/models/check_primary_data_body_model.dart';
import '../../../data/models/ride_types/ride_types_model.dart';
import '../../../domain/usecase/ride_types/clear_ride_types_local_usecase.dart';
import '../../../domain/usecase/ride_types/download_ride_types_network_usecase.dart';
import '../../../domain/usecase/ride_types/save_ride_types_data_usecase.dart';

part 'payment_methods_state.dart';

part 'payment_methods_cubit.freezed.dart';

@injectable
class PaymentMethodsCubit extends Cubit<PaymentMethodsState> {
  PaymentMethodsCubit(this.clearPaymentMethodsUseCase, this.downloadPaymentMethodsUseCase,
      this.savePaymentMethodsDataInLocalDbUseCase)
      : super(const PaymentMethodsState.initial());
  final ClearPaymentMethodsUseCase clearPaymentMethodsUseCase;
  final DownloadPaymentMethodsUseCase downloadPaymentMethodsUseCase;
  final SavePaymentMethodsDataInLocalDbUseCase savePaymentMethodsDataInLocalDbUseCase;

  Future clearPaymentMethodsInLocalDatabase({required String tableName,required languageId}) async {
    try {
      await clearPaymentMethodsUseCase(param: [tableName,languageId]);
    } catch (e) {
      print(e);
    }
  }

  Future getPaymentMethodsFromNetworkDB(
      {required String appLang, required tableDefinitions}) async {
    try {
      tableDefinitions =
          (tableDefinitions as CheckPrimaryDataBodyModel).toJson();

      final response =
          await downloadPaymentMethodsUseCase(param: [appLang, tableDefinitions]);
      return response.data["data_rows"]
          .cast<Map<String, dynamic>>()
          .map((e) => PaymentMethodsModel.fromJson(e))
          .toList();
    } catch (e) {
      print(e);
    }
  }

  Future savePaymentMethodsDataInLocalDB(
      {required String tableName, required values}) async {
    try {
      final response = await savePaymentMethodsDataInLocalDbUseCase(
        param: [tableName, values],
      );
      return response;
    } catch (e) {
      print(e);
    }
  }
}
