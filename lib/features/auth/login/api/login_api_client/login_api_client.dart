import 'package:dio/dio.dart';
import 'package:flower_appp/core/values/api_endpoints.dart';
import 'package:flower_appp/features/auth/login/data/models/login_request.dart';
import 'package:flower_appp/features/auth/login/data/models/login_response/login_response.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'login_api_client.g.dart';

@injectable
@RestApi()
abstract class LoginApiClient {
  @factoryMethod
  factory LoginApiClient(Dio dio) = _LoginApiClient;
  @POST(ApiEndpoints.login)
  Future<LoginResponse> login({@Body() required LoginRequest body});
}
