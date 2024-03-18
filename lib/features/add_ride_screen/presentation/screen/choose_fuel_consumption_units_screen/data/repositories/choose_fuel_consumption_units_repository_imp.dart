import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/domain/repositories/choose_ride_type_repository.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/choose_fuel_consumption_units_repository.dart';
import '../data_sources/choose_fuel_consumption_units_datasource.dart';
@Injectable(as: ChooseFuelConsumptionUnitsRepository)
class ChooseFuelConsumptionUnitsRepositoryImpl extends ChooseFuelConsumptionUnitsRepository{
  final ChooseFuelConsumptionUnitDataSource chooseFuelConsumptionUnitDataSource;

  ChooseFuelConsumptionUnitsRepositoryImpl(this.chooseFuelConsumptionUnitDataSource);


  @override
  getFuelConsumptionUnits() async {
    final response = await chooseFuelConsumptionUnitDataSource.getFuelConsumptionUnits();
    return response;
  }


}