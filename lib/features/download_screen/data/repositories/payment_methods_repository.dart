import 'package:au2rides/features/download_screen/data/datasources/payment_methods_data_source.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repository/payment_methods_repository.dart';
import '../../domain/repository/weather_measuring_units_repository.dart';
import '../datasources/weather_units_data_source.dart';

@Injectable(as: PaymentMethodsRepository)
class PaymentMethodsRepositoryImpl extends PaymentMethodsRepository {
  final PaymentMethodsDataSource _paymentMethodsDataSource;

  PaymentMethodsRepositoryImpl(this._paymentMethodsDataSource);

  @override
  clearPaymentMethodsDataInLocalDB(
      {required tableName, required languageId}) async {
    final response =
        await _paymentMethodsDataSource.clearAllPaymentMethodsDataFromLocalDb(
            tableName: tableName, languageId: languageId);
    return response;
  }

  @override
  downloadPaymentMethodsFromNetworkDB(
      {required tableDefinitions, required appLang}) async {
    final response =
        await _paymentMethodsDataSource.downloadPaymentMethodsDataFromNetworkDb(
            tableDefinitions: tableDefinitions, appLang: appLang);
    return response;
  }

  @override
  savePaymentMethodsDataInLocalDB({required values, required tableName}) async {
    final response = await _paymentMethodsDataSource
        .savePaymentMethodsInLocalDb(tableName: tableName, values: values);
    return response;
  }
}
