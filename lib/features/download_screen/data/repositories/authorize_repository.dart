import 'package:au2rides/features/download_screen/data/datasources/acquisition_types_datasource.dart';
import 'package:au2rides/features/download_screen/data/datasources/authorize_datasource.dart';
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart';
import 'package:au2rides/features/download_screen/domain/repository/authorize_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthorizeRepository)
class AuthorizeRepositoryImpl extends AuthorizeRepository {
  final AuthorizeDataSource _authorizeDataSource;

  AuthorizeRepositoryImpl(this._authorizeDataSource);

  @override
  authorize({required data}) async {
    final response = await _authorizeDataSource.authorizeNetworkDatabase(data: data);
    return response;
  }

}
