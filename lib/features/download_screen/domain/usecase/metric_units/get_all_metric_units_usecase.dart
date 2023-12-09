import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/metric_units_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllMetricUnitsUseCase implements UseCase<dynamic, dynamic> {
  final MetricUnitsRepository _metricUnitsRepository;

  GetAllMetricUnitsUseCase(this._metricUnitsRepository);

  @override
  call({param}) async {
    final response = await _metricUnitsRepository.getMetricUnits(
        lang: param[0], tableDefinitions: param[1]);
    return response;
  }
}
