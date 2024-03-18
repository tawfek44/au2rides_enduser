import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/domain/repositories/choose_ride_type_repository.dart';
import 'package:injectable/injectable.dart';

import '../repositories/choose_fuel_consumption_units_repository.dart';


@injectable
class ChooseFuelConsumptionUnitsUseCase extends UseCase<dynamic, dynamic> {
  final ChooseFuelConsumptionUnitsRepository chooseFuelConsumptionUnitsRepository;

  ChooseFuelConsumptionUnitsUseCase(this.chooseFuelConsumptionUnitsRepository);

  @override
  Future call({param}) async {
    final response = await chooseFuelConsumptionUnitsRepository.getFuelConsumptionUnits();
    return response;
  }

}