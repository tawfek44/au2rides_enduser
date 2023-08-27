import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

@Injectable(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo {
  NetworkInfoImpl(this.internetConnectionChecker);
  @factoryMethod
  static NetworkInfoImpl create()  =>
      NetworkInfoImpl._(InternetConnectionChecker.createInstance());
  final InternetConnectionChecker internetConnectionChecker;
  NetworkInfoImpl._(this.internetConnectionChecker);

  @override
  Future<bool> get isConnected => internetConnectionChecker.hasConnection;
}
