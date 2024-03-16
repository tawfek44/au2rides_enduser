import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/domain/repositories/choose_ride_type_repository.dart';
import 'package:injectable/injectable.dart';

import '../repositories/choose_fuel_unit_repository.dart';


@injectable
class ChooseFuelUnitsUseCase extends UseCase<dynamic, dynamic> {
  final ChooseFuelUnitsRepository chooseFuelUnitsRepository;

  ChooseFuelUnitsUseCase(this.chooseFuelUnitsRepository);

  @override
  Future call({param}) async {
    final response = await chooseFuelUnitsRepository.getFuelUnits();
    return response;
  }

}