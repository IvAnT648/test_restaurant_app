import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurant_task/core/error/failure.dart';

import '../../models/auth.dart';
import '../../models/profile.dart';

typedef JsonMap = Map<String, dynamic>;

enum _HttpMethod {
  get,
  post;

  @override
  String toString() {
    switch (this) {
      case get:
        return 'GET';
      case post:
        return 'POST';
    }
  }
}

abstract class _Endpoint {
  static const baseUrl = 'http://45.10.110.181:8080';

  static get login => '/api/v1/auth/login';

  static get getProfile => '/api/v1/auth/login/profile';
}

abstract class IServerDataSource {
  Future<AuthDataModel> login(String email, String password);

  Future<ProfileModel> getProfileData(String token);
}

@Injectable(as: IServerDataSource)
class ServerDataSource implements IServerDataSource {
  Map<String, String> get _defaultHeaders => {
        'content-type': 'application/json',
      };

  Map<String, String> _getHeadersWithToken(String token) => _defaultHeaders
    ..addAll({
      'authorization': 'Bearer $token',
    });

  final _dio = Dio();

  Future<Response> _fetch({
    required String url,
    required _HttpMethod method,
    JsonMap? params,
    dynamic data,
    Map<String, String>? headers,
  }) async {
    return await _dio.fetch(
      Options(
        method: method.toString(),
        headers: headers,
      )
          .compose(
            _dio.options,
            url,
            queryParameters: params,
            data: data,
          )
          .copyWith(baseUrl: _Endpoint.baseUrl),
    );
  }

  @override
  Future<AuthDataModel> login(String email, String password) async {
    Response? response;

    try {
      response = await _fetch(
        url: _Endpoint.login,
        method: _HttpMethod.post,
        headers: _defaultHeaders,
        data: {
          'email': email,
          'password': password,
        },
      );
    } on DioException catch (e) {
      if (e.hasNetworkTroubles) {
        throw NoInternetConnectionError();
      }

      if (e.response?.data['message'] != null) {
        throw ServerFailure(e.response!.data['message']);
      }
    } catch (e) {
      throw CommonError();
    }

    if (response == null) {
      throw ServerFailure('Некорректный ответ сервера');
    }

    if (response.statusCode == 200) {
      print(response.data);

      if (response.data['tokens']['accessToken'] == null ||
          response.data['tokens']['refreshToken'] == null) {
        throw ServerFailure('Некорректный ответ сервера');
      }

      return AuthDataModel(
        accessToken: response.data['tokens']['accessToken'],
        refreshToken: response.data['tokens']['refreshToken'],
      );
    }

    throw ServerFailure(
        response.data['message'] ?? 'Ошибка сервера ${response.statusCode}');
  }

  @override
  Future<ProfileModel> getProfileData(String token) async {
    Response? response;

    try {
      response = await _fetch(
        url: _Endpoint.getProfile,
        method: _HttpMethod.get,
        headers: _getHeadersWithToken(token),
      );
    }  on DioException catch (e) {
      if (e.hasNetworkTroubles) {
        throw NoInternetConnectionError();
      }

      if (e.response?.data['message'] != null) {
        throw ServerFailure(e.response!.data['message']);
      }
    } catch (e) {
      throw CommonError();
    }

    if (response == null) {
      throw ServerFailure('Некорректный ответ сервера');
    }

    if (response.statusCode == 200) {
      print(response.data);
      return ProfileModel.fromJsonMap(response.data);
    }

    throw ServerFailure(
        response.data['message'] ?? 'Ошибка сервера ${response.statusCode}');
  }
}

extension on DioException {
  bool get hasNetworkTroubles => error.toString().contains('Network is unreachable');
}
