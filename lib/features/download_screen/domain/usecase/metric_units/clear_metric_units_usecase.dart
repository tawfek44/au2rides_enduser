import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/metric_units_repository.dart';
import 'package:injectable/injectable.dart';


@injectable
class ClearMetricUnitsUseCase implements UseCase<dynamic, dynamic> {
  final MetricUnitsRepository _metricUnitsRepository;

  ClearMetricUnitsUseCase(this._metricUnitsRepository);

  @override
  call({param}) async {
    final response = await _metricUnitsRepository.clearMetricUnitsFromLocalDB(
        tableName: param[0], languageId: param[1]);
    return response;
  }
}
