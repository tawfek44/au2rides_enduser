import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/currency_repository.dart';

@injectable
class SaveAcquisitionTypesInLocalDbUseCase extends UseCase<dynamic, dynamic> {
  final AcquisitionTypesRepository acquisitionTypesRepository;

  SaveAcquisitionTypesInLocalDbUseCase(this.acquisitionTypesRepository);

  @override
  Future call({param}) async {
    final response =
        await acquisitionTypesRepository.saveAcquisitionTypesInLocalDatabase(tableName: param[0],values: param[1]);
    return response;
  }
}
