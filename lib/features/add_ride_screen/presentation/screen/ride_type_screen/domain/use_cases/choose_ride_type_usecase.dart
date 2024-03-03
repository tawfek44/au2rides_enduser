import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/domain/repositories/choose_ride_type_repository.dart';
import 'package:injectable/injectable.dart';


@injectable
class ChooseRideTypeUseCase extends UseCase<dynamic, dynamic> {
  final ChooseRideTypeRepository chooseRideTypeRepository;

  ChooseRideTypeUseCase(this.chooseRideTypeRepository);

  @override
  Future call({param}) async {
    final response = await chooseRideTypeRepository.chooseRideType();
    return response;
  }

}