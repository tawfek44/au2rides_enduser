import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/currency_repository.dart';

@injectable
class ClearAcquisitionTypesUseCase implements UseCase<dynamic, dynamic> {
  final AcquisitionTypesRepository _acquisitionTypesRepository;

  ClearAcquisitionTypesUseCase(this._acquisitionTypesRepository);

  @override
  call({param}) async {
    final response = await _acquisitionTypesRepository.clearAcquisitionTypesFromLocalDB(
        tableName: param[0], languageId: param[1]);
    return response;
  }
}
