import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/add_ride_screen/domain/repositories/add_ride_repository.dart';
import 'package:au2rides/features/splash_screen/domain/repositories/check_primary_data_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/dependancy_injection/injection.dart';

@injectable
class AddRideUseCase extends UseCase<dynamic, dynamic> {
  final AddRideRepository addRideRepository;

  AddRideUseCase(this.addRideRepository);

  @override
  Future call({param}) async {
    final response = await addRideRepository.addRide(data: param);

    return response;
  }

}