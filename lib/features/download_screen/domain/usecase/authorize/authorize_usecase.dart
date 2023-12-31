import 'package:au2rides/core/use_case/use_case.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/authorize_repository.dart';
import 'package:injectable/injectable.dart';


@injectable
class AuthorizeUseCase implements UseCase<dynamic, dynamic> {
  final AuthorizeRepository _authorizeRepository;

  AuthorizeUseCase(this._authorizeRepository);

  @override
  call({param}) async {
    final response = await _authorizeRepository.authorize(data: param);
    return response;
  }
}
