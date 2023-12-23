import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/model_generation_specification_keys_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class ClearModelGenerationSpecificationKeysUseCase
    implements UseCase<dynamic, dynamic> {
  final ModelGenerationSpecificationKeysRepository
      _generationSpecificationKeysRepository;

  ClearModelGenerationSpecificationKeysUseCase(
      this._generationSpecificationKeysRepository);

  @override
  call({param}) async {
    final response = await _generationSpecificationKeysRepository
        .clearModelGenerationSpecificationKeysFromLocalDB(
            tableName: param[0], languageId: param[1]);
    return response;
  }
}
