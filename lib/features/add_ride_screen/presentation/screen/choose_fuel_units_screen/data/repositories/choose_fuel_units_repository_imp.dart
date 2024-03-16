import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/domain/repositories/choose_ride_type_repository.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/choose_fuel_unit_repository.dart';
import '../data_sources/choose_fuel_units_datasource.dart';
@Injectable(as: ChooseFuelUnitsRepository)
class ChooseFuelUnitsRepositoryImpl extends ChooseFuelUnitsRepository{
  final ChooseFuelUnitsDataSource chooseFuelUnitsDataSource;

  ChooseFuelUnitsRepositoryImpl(this.chooseFuelUnitsDataSource);
  

  @override
  getFuelUnits() async {
    final response = await chooseFuelUnitsDataSource.getFuelUnits();
    return response;
  }

}