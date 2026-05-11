// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../core/network/api_interceptor.dart' as _i807;
import '../../features/auth/forget_password/api/api_client/forget_password_api_client.dart'
    as _i478;
import '../../features/auth/forget_password/api/data_sources/forget_password_remote_data_source_impl.dart'
    as _i1022;
import '../../features/auth/forget_password/data/data_sources/forget_password_remote_data_source_contract.dart'
    as _i932;
import '../../features/auth/forget_password/data/repositories/forget_password_repo_impl.dart'
    as _i55;
import '../../features/auth/forget_password/domain/repositories/forget_password_repo_contract.dart'
    as _i917;
import '../../features/auth/forget_password/domain/use_cases/enter_reset_email_use_case.dart'
    as _i865;
import '../../features/auth/forget_password/domain/use_cases/reset_password_use_case.dart'
    as _i22;
import '../../features/auth/forget_password/domain/use_cases/verify_reset_code_use_case.dart'
    as _i295;
import '../../features/auth/forget_password/presentation/view_model/cubit/forget_password_cubit.dart'
    as _i621;
import '../../features/auth/login/api/data_sources/login_local_data_source_impl.dart'
    as _i338;
import '../../features/auth/login/api/data_sources/login_remote_data_source_impl.dart'
    as _i584;
import '../../features/auth/login/api/login_api_client/login_api_client.dart'
    as _i251;
import '../../features/auth/login/data/data_sources/login_local_data_source.dart'
    as _i488;
import '../../features/auth/login/data/data_sources/login_remote_data_source.dart'
    as _i117;
import '../../features/auth/login/data/repo/login_repository_impl.dart' as _i17;
import '../../features/auth/login/domain/repo/login_repository.dart' as _i137;
import '../../features/auth/login/domain/use_case/login_use_case.dart' as _i630;
import '../../features/auth/login/presentation/view_model/login_cubit.dart'
    as _i1000;
import '../../features/auth/signup/api/api_services/api_services.dart' as _i749;
import '../../features/auth/signup/api/data_sources/register_remote_datasource_impl.dart'
    as _i626;
import '../../features/auth/signup/data/data_sources/register_remote_datasource_contract.dart'
    as _i865;
import '../../features/auth/signup/data/repositories/register_repo_impl.dart'
    as _i277;
import '../../features/auth/signup/domain/repositories/register_repo_contract.dart'
    as _i79;
import '../../features/auth/signup/domain/use_cases/register_use_case.dart'
    as _i146;
import '../../features/auth/signup/presentation/view_model/register_cubit.dart'
    as _i206;
import '../dio/dio_module.dart' as _i977;
import '../security_storage/security_storage.dart' as _i1026;
import '../security_storage/security_storage_module.dart' as _i477;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final securityStorageModule = _$SecurityStorageModule();
    final dioModule = _$DioModule();
    gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => securityStorageModule.secureStorage,
    );
    gh.lazySingleton<_i1026.SecurityStorage>(
      () => _i1026.SecurityStorage(gh<_i558.FlutterSecureStorage>()),
    );
    gh.factory<_i488.LoginLocalDataSource>(
      () => _i338.LoginLocalDataSourceImpl(gh<_i1026.SecurityStorage>()),
    );
    gh.factory<_i807.ApiInterceptor>(
      () => _i807.ApiInterceptor(gh<_i1026.SecurityStorage>()),
    );
    gh.singleton<_i361.Dio>(() => dioModule.getDio(gh<_i807.ApiInterceptor>()));
    gh.lazySingleton<_i478.ForgetPasswordApiClient>(
      () => _i478.ForgetPasswordApiClient(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i749.RegisterApiService>(
      () => _i749.RegisterApiService(gh<_i361.Dio>()),
    );
    gh.factory<_i251.LoginApiClient>(
      () => _i251.LoginApiClient(gh<_i361.Dio>()),
    );
    gh.factory<_i932.ForgetPasswordRemoteDataSourceContract>(
      () => _i1022.ForgetPasswordRemoteDataSourceImpl(
        forgetPasswordApiClient: gh<_i478.ForgetPasswordApiClient>(),
      ),
    );
    gh.factory<_i117.LoginRemoteDataSource>(
      () => _i584.LoginRemoteDataSourceImpl(gh<_i251.LoginApiClient>()),
    );
    gh.factory<_i865.RegisterRemoteDatasourceContract>(
      () => _i626.RegisterRemoteDatasourceImpl(gh<_i749.RegisterApiService>()),
    );
    gh.factory<_i917.ForgetPasswordRepoContract>(
      () => _i55.ForgetPasswordRepoImpl(
        gh<_i932.ForgetPasswordRemoteDataSourceContract>(),
      ),
    );
    gh.factory<_i137.LoginRepository>(
      () => _i17.LoginRepositoryImpl(
        gh<_i117.LoginRemoteDataSource>(),
        gh<_i488.LoginLocalDataSource>(),
      ),
    );
    gh.factory<_i79.RegisterRepoContract>(
      () =>
          _i277.RegisterRepoImpl(gh<_i865.RegisterRemoteDatasourceContract>()),
    );
    gh.factory<_i865.EnterResetEmailUseCase>(
      () => _i865.EnterResetEmailUseCase(
        forgetPasswordRepoContract: gh<_i917.ForgetPasswordRepoContract>(),
      ),
    );
    gh.factory<_i22.ResetPasswordUseCase>(
      () => _i22.ResetPasswordUseCase(
        forgetPasswordRepoContract: gh<_i917.ForgetPasswordRepoContract>(),
      ),
    );
    gh.factory<_i295.VerifyResetCodeUseCase>(
      () => _i295.VerifyResetCodeUseCase(
        forgetPasswordRepoContract: gh<_i917.ForgetPasswordRepoContract>(),
      ),
    );
    gh.factory<_i621.ForgetPasswordCubit>(
      () => _i621.ForgetPasswordCubit(
        gh<_i865.EnterResetEmailUseCase>(),
        gh<_i22.ResetPasswordUseCase>(),
        gh<_i295.VerifyResetCodeUseCase>(),
      ),
    );
    gh.factory<_i146.RegisterUseCase>(
      () => _i146.RegisterUseCase(gh<_i79.RegisterRepoContract>()),
    );
    gh.factory<_i630.LoginUseCase>(
      () => _i630.LoginUseCase(gh<_i137.LoginRepository>()),
    );
    gh.factory<_i206.RegisterCubit>(
      () => _i206.RegisterCubit(gh<_i146.RegisterUseCase>()),
    );
    gh.factory<_i1000.LoginCubit>(
      () => _i1000.LoginCubit(gh<_i630.LoginUseCase>()),
    );
    return this;
  }
}

class _$SecurityStorageModule extends _i477.SecurityStorageModule {}

class _$DioModule extends _i977.DioModule {}
