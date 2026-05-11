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
}
