import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/model_generation_specification_keys_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/currency_repository.dart';

@injectable
class SaveModelGenerationSpecificationKeysInLocalDbUseCase
    extends UseCase<dynamic, dynamic> {
  final ModelGenerationSpecificationKeysRepository
      _generationSpecificationKeysRepository;

  SaveModelGenerationSpecificationKeysInLocalDbUseCase(
      this._generationSpecificationKeysRepository);

  @override
  Future call({param}) async {
    final response = await _generationSpecificationKeysRepository
        .saveModelGenerationSpecificationKeysInLocalDatabase(
            tableName: param[0], values: param[1]);
    return response;
  }
}
