import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/domain/repositories/choose_ride_type_repository.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/choose_fuel_types_repository.dart';
import '../data_sources/choose_fuel_type_datasource.dart';
@Injectable(as: ChooseFuelTypesRepository)
class ChooseFuelTypesRepositoryImpl extends ChooseFuelTypesRepository{
  final ChooseFuelTypeDataSource chooseFuelTypeDataSource;

  ChooseFuelTypesRepositoryImpl(this.chooseFuelTypeDataSource);


  @override
  getFuelTypes() async {
    final response = await chooseFuelTypeDataSource.getFuelType();
    return response;
  }

}