import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/model_generation_specification_keys_repository.dart';
import 'package:injectable/injectable.dart';

import '../../repository/acquisition_types_repository.dart';

@injectable
class GetAllModelGenerationSpecificationKeysUseCase
    implements UseCase<dynamic, dynamic> {
  final ModelGenerationSpecificationKeysRepository
      _generationSpecificationKeysRepository;

  GetAllModelGenerationSpecificationKeysUseCase(
      this._generationSpecificationKeysRepository);

  @override
  call({param}) async {
    final response = await _generationSpecificationKeysRepository
        .getModelGenerationSpecificationKeys(
            lang: param[0], tableDefinitions: param[1]);
    return response;
  }
}
