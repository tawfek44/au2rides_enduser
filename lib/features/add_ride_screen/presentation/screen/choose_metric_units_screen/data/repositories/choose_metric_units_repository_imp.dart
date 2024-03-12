import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/domain/repositories/choose_ride_type_repository.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/choose_metric_units_repository.dart';
import '../data_sources/choose_metric_units_datasource.dart';
@Injectable(as: ChooseMetricUnitsRepository)
class ChooseMetricUnitsRepositoryImpl extends ChooseMetricUnitsRepository{
  final ChooseMetricUnitsDataSource chooseMetricUnitsDataSource;

  ChooseMetricUnitsRepositoryImpl(this.chooseMetricUnitsDataSource);


  @override
  getMetricUnits() async {
    final response = await chooseMetricUnitsDataSource.getMetricUnits();
    return response;
  }

}