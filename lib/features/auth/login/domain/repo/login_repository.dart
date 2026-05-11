import 'package:flower_appp/config/base_response/base_response.dart';
import 'package:flower_appp/features/auth/login/data/models/login_response/login_response.dart';

abstract class LoginRepository {
  Future<BaseResponse<LoginResponse>> login({
    required String email,
    required String password,
  });
}
