import 'package:flower_appp/features/auth/login/data/models/login_response/login_response.dart';

abstract interface class LoginRemoteDataSource {
  Future<LoginResponse> login(String email, String password);
}
