import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/domain/repositories/choose_ride_type_repository.dart';
import 'package:injectable/injectable.dart';

import '../repositories/choose_ride_makes_repository.dart';


@injectable
class ChooseRideMakesUseCase extends UseCase<dynamic, dynamic> {
  final ChooseRideMakesRepository chooseRideMakesRepository;

  ChooseRideMakesUseCase(this.chooseRideMakesRepository);

  @override
  Future call({param}) async {
    final response = await chooseRideMakesRepository.chooseRideMakes(rideTypeId: param);
    return response;
  }

}