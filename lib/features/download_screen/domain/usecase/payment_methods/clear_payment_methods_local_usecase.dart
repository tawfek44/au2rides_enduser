import 'package:au2rides/features/download_screen/domain/repository/payment_methods_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/use_case/use_case.dart';
import '../../repository/weather_measuring_units_repository.dart';

@injectable
class ClearPaymentMethodsUseCase implements UseCase<dynamic,dynamic>{
  final PaymentMethodsRepository _methodsRepository;

  ClearPaymentMethodsUseCase(this._methodsRepository);

  @override
  call({param}) async {
    final response = await _methodsRepository.clearPaymentMethodsDataInLocalDB(tableName: param);
    return response;
  }

}