
import 'package:au2rides/features/download_screen/domain/repository/payment_methods_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/use_case/use_case.dart';

@injectable
class DownloadPaymentMethodsUseCase implements UseCase<dynamic,dynamic>{
  final PaymentMethodsRepository _paymentMethodsRepository;

  DownloadPaymentMethodsUseCase(this._paymentMethodsRepository);

  @override
  call({param}) async {
    final response = await _paymentMethodsRepository.downloadPaymentMethodsFromNetworkDB(appLang:param[0] ,tableDefinitions: param[1]);
    return response;
  }

}