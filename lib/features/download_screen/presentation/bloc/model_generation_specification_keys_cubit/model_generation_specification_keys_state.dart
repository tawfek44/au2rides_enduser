part of 'model_generation_specification_keys_cubit.dart';

@freezed
class ModelGenerationSpecificationKeysState
    with _$ModelGenerationSpecificationKeysState {
  const factory ModelGenerationSpecificationKeysState.initial() =
      _InitialModelGenerationSpecificationKeysState;

  const factory ModelGenerationSpecificationKeysState.loading() =
      ModelGenerationSpecificationKeysStateLoading;

  const factory ModelGenerationSpecificationKeysState.loaded(response) =
      ModelGenerationSpecificationKeysStateLoaded;

  const factory ModelGenerationSpecificationKeysState.error(Object e) =
      ModelGenerationSpecificationKeysStateError;
}
