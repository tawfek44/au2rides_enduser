import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/home_screen/domain/repositories/get_my_rides_repository.dart';
import 'package:injectable/injectable.dart';


@injectable
class GetMyRidesUseCase implements UseCase<dynamic, dynamic> {
  final GetMyRidesRepository getMyRidesRepository;

  GetMyRidesUseCase(this.getMyRidesRepository);

  @override
  call({param}) async {
    final response = await getMyRidesRepository.getMyRides();
    return response;
  }
}
