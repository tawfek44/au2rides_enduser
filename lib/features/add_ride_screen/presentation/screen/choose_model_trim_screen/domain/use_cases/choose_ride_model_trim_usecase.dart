import 'package:au2rides/core/use_case/use_case.dart';
import 'package:injectable/injectable.dart';

import '../repositories/choose_ride_model_trim_repository.dart';


@injectable
class ChooseRideModelTrimUseCase extends UseCase<dynamic, dynamic> {
  final ChooseRideModelTrimRepository chooseRideModelTrimRepository;

  ChooseRideModelTrimUseCase(this.chooseRideModelTrimRepository);

  @override
  Future call({param}) async {
    final response = await chooseRideModelTrimRepository.getRideModelTrim(rideMakesId: param);
    return response;
  }

}