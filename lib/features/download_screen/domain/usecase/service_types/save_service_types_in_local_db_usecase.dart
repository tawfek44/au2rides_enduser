import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/service_types_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/currency_repository.dart';

@injectable
class SaveServiceTypesInLocalDbUseCase extends UseCase<dynamic, dynamic> {
  final ServiceTypesRepository _serviceTypesRepository;

  SaveServiceTypesInLocalDbUseCase(this._serviceTypesRepository);

  @override
  Future call({param}) async {
    final response = await _serviceTypesRepository
        .saveServiceTypesInLocalDatabase(tableName: param[0], values: param[1]);
    return response;
  }
}
