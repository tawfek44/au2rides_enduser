part of 'check_primary_data_cubit.dart';

@freezed
class CheckPrimaryDataState with _$CheckPrimaryDataState {
  const factory CheckPrimaryDataState.initial() = _Initial;
  const factory CheckPrimaryDataState.loading() = Loading;
  const factory CheckPrimaryDataState.loaded(countriesResponse) = Loaded;
  const factory CheckPrimaryDataState.error(Object e) = Error;
}
