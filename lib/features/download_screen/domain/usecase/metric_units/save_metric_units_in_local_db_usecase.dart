import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/metric_units_repository.dart';
import 'package:injectable/injectable.dart';


@injectable
class SaveMetricUnitsInLocalDbUseCase extends UseCase<dynamic, dynamic> {
  final MetricUnitsRepository _metricUnitsRepository;

  SaveMetricUnitsInLocalDbUseCase(this._metricUnitsRepository);

  @override
  Future call({param}) async {
    final response = await _metricUnitsRepository
        .saveMetricUnitsInLocalDatabase(tableName: param[0], values: param[1]);
    return response;
  }
}
