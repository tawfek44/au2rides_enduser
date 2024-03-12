import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/domain/repositories/choose_ride_type_repository.dart';
import 'package:injectable/injectable.dart';

import '../repositories/choose_metric_units_repository.dart';


@injectable
class ChooseMetricUnitsUseCase extends UseCase<dynamic, dynamic> {
  final ChooseMetricUnitsRepository chooseMetricUnitsRepository;

  ChooseMetricUnitsUseCase(this.chooseMetricUnitsRepository);

  @override
  Future call({param}) async {
    final response = await chooseMetricUnitsRepository.getMetricUnits();
    return response;
  }

}