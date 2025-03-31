import 'package:dio/dio.dart';

import '../error/exceptions.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio) {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers['Authorization'] = 'Bearer YOUR_TOKEN';
          return handler.next(options);
        },
        onResponse: (response, handler) {
          if (response.statusCode == 200) {
            return handler.next(response);
          } else {
            return handler.reject(
              DioException(
                requestOptions: response.requestOptions,
                response: response,
              ),
            );
          }
        },
        onError: (DioException e, handler) {
          throw mapDioErrorToException(e);
        },
      ),
    );
  }

  Future<dynamic> get(String url) async {
    try {
      final response = await dio.get(url);
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> post(String url, dynamic data) async {
    try {
      final response = await dio.post(url, data: data);
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  Exception mapDioErrorToException(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return FetchDataException('Connection Timeout');
      case DioExceptionType.receiveTimeout:
        return FetchDataException('Receive Timeout');
      case DioExceptionType.badResponse:
        return BadRequestException(
          error.response?.data.toString() ?? 'Bad Request',
        );
      case DioExceptionType.unknown:
        return FetchDataException('No Internet Connection');
      default:
        return FetchDataException('Unexpected Error');
    }
  }
}
