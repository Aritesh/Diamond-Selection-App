import 'network_api_services.dart';

abstract class BaseRemoteDataSource {
  final ApiService apiService;

  BaseRemoteDataSource(this.apiService);
}
