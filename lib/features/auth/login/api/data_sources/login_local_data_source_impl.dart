import 'package:flower_appp/config/security_storage/security_storage.dart';
import 'package:flower_appp/core/values/api_param.dart';
import 'package:flower_appp/features/auth/login/data/data_sources/login_local_data_source.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: LoginLocalDataSource)
class LoginLocalDataSourceImpl implements LoginLocalDataSource {
  final SecurityStorage _securityStorage;

  LoginLocalDataSourceImpl(this._securityStorage);

  @override
  Future<void> saveToken(String token) {
    return _securityStorage.setSecuredString(ApiParam.token, token);
  }

  @override
  Future<void> clearToken() {
    return _securityStorage.deleteSecuredString(ApiParam.token);
  }

  @override
  Future<void> saveRememberMe(bool rememberMe) {
    return _securityStorage.setSecuredBool(ApiParam.rememberMe, rememberMe);
  }

  @override
  Future<bool> getRememberMe() {
    return _securityStorage.getSecuredBool(ApiParam.rememberMe);
  }

  @override
  Future<void> cacheUserData(Map<String, dynamic> userJson) async {
    await _securityStorage.setSecuredString('user_email', userJson['user_email'] ?? '');
    await _securityStorage.setSecuredString('user_name', userJson['user_name'] ?? '');
    await _securityStorage.setSecuredString('user_photo', userJson['user_photo'] ?? '');
  }
}
