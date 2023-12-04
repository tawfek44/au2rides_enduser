import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/payment_methods_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/weather_measuring_units_repository.dart';

@injectable
class SavePaymentMethodsDataInLocalDbUseCase extends UseCase<dynamic,dynamic>{
  final PaymentMethodsRepository _paymentMethodsRepository;

  SavePaymentMethodsDataInLocalDbUseCase(this._paymentMethodsRepository);

  @override
  Future call({param}) async {
   final response = await _paymentMethodsRepository.savePaymentMethodsDataInLocalDB(values: param[1], tableName: param[0]);
   return response;
  }

}