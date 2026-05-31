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
import '../../core/shared_features/products/api/api_client/products_api_client.dart'
    as _i890;
import '../../core/shared_features/products/api/datasources/products_remote_data_source_impl.dart'
    as _i508;
import '../../core/shared_features/products/data/datasources/products_remote_data_source_contract.dart'
    as _i462;
import '../../core/shared_features/products/data/repositories/products_repo_impl.dart'
    as _i368;
import '../../core/shared_features/products/domain/repositories/products_repo_contract.dart'
    as _i1062;
import '../../core/shared_features/products/domain/use_cases/products_use_case.dart'
    as _i919;
import '../../core/shared_features/shared_view_model/cubit/home_shared_cubit.dart'
    as _i648;
import '../../features/app_sections/cart/api/api_client/cart_api_client.dart'
    as _i421;
import '../../features/app_sections/cart/api/data_sources/cart_remote_data_source_impl.dart'
    as _i354;
import '../../features/app_sections/cart/data/data_sources/cart_remote_data_source_contract.dart'
    as _i181;
import '../../features/app_sections/cart/data/repositories/cart_repo_impl.dart'
    as _i938;
import '../../features/app_sections/cart/domain/repositories/cart_repo_contract.dart'
    as _i420;
import '../../features/app_sections/cart/domain/use_cases/add_item_to_cart_use_case.dart'
    as _i5;
import '../../features/app_sections/cart/domain/use_cases/get_items_cart_use_case.dart'
    as _i17;
import '../../features/app_sections/cart/domain/use_cases/remove_item_from_cart_use_case.dart'
    as _i158;
import '../../features/app_sections/cart/domain/use_cases/update_cart_item_quantity_use_case.dart'
    as _i79;
import '../../features/app_sections/cart/presentation/view_model/cubit/cart_cubit.dart'
    as _i132;
import '../../features/app_sections/categories/api/categories_api_client/categories_api_client.dart'
    as _i22;
import '../../features/app_sections/categories/api/data_sources/categories_remote_data_source_impl.dart'
    as _i311;
import '../../features/app_sections/categories/data/datasources/category_remote_data_source_contract.dart'
    as _i1047;
import '../../features/app_sections/categories/data/repositories/categories_repo_impl.dart'
    as _i109;
import '../../features/app_sections/categories/domain/repositories/categories_repo_contract.dart'
    as _i574;
import '../../features/app_sections/categories/domain/use_cases/categories_use_case.dart'
    as _i31;
import '../../features/app_sections/profile/presentation/view_model/cubit/profile_cubit.dart'
    as _i527;
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
import '../../features/auth/login/presentation/view_model/cubit/login_cubit.dart'
    as _i609;
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
import '../../features/best_seller/api/api_client/best_seller_api_client.dart'
    as _i618;
import '../../features/best_seller/api/data_sources/best_seller_remote_data_source_impl.dart'
    as _i395;
import '../../features/best_seller/data/data_sources/best_seller_remote_data_source_contract.dart'
    as _i850;
import '../../features/best_seller/data/repo/best_seller_repo_impl.dart'
    as _i1026;
import '../../features/best_seller/domain/repo/best_seller_repo_contract.dart'
    as _i949;
import '../../features/best_seller/domain/use_case/best_seller_use_case.dart'
    as _i165;
import '../../features/change_password/api/api_client/change_password_api_client.dart'
    as _i244;
import '../../features/change_password/api/data_sources/change_password_remote_data_source_imp.dart'
    as _i161;
import '../../features/change_password/data/data_source/change_password_remote_data_source_contract.dart'
    as _i167;
import '../../features/change_password/data/repo/change_password_repo_imp.dart'
    as _i49;
import '../../features/change_password/domain/repo/change_password_repo_contract.dart'
    as _i333;
import '../../features/change_password/domain/use_cases/change_password_use_case.dart'
    as _i874;
import '../../features/change_password/presentation/view_model/cubit/change_password_cubit.dart'
    as _i511;
import '../../features/edite_profile/api/api_client/edite_profile_api_client.dart'
    as _i991;
import '../../features/edite_profile/api/data_sources/edite_profile_remote_data_source_impl.dart'
    as _i372;
import '../../features/edite_profile/data/datasources/edite_profile_remote_data_source.dart'
    as _i896;
import '../../features/edite_profile/data/repositories/edite_profile_repo_impl.dart'
    as _i758;
import '../../features/edite_profile/domain/repositories/edite_profile_repo_contract.dart'
    as _i608;
import '../../features/edite_profile/domain/use_cases/edit_profile_use_case.dart'
    as _i517;
import '../../features/edite_profile/domain/use_cases/get_profile_use_case.dart'
    as _i579;
import '../../features/edite_profile/domain/use_cases/upload_profile_photo_use_case.dart'
    as _i627;
import '../../features/edite_profile/presentation/view_model/cubit/edite_profile_cubit.dart'
    as _i421;
import '../../features/occasion/api/api_client/occasion_api_client.dart'
    as _i425;
import '../../features/occasion/api/datasources/occasion_remote_data_source_impl.dart'
    as _i30;
import '../../features/occasion/data/datasources/occasion_remote_data_source.dart'
    as _i335;
import '../../features/occasion/data/repositories/occasion_repository_impl.dart'
    as _i886;
import '../../features/occasion/domain/repositories/occasion_repo_contract.dart'
    as _i481;
import '../../features/occasion/domain/use_cases/get_occasions_use_case.dart'
    as _i413;
import '../../features/occasion/presentation/view_model/cubit/occasion_cubit.dart'
    as _i610;
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
    gh.factory<_i527.ProfileCubit>(
      () => _i527.ProfileCubit(gh<_i558.FlutterSecureStorage>()),
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
    gh.lazySingleton<_i890.ProductsApiClient>(
      () => _i890.ProductsApiClient(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i421.CartApiClient>(
      () => _i421.CartApiClient(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i478.ForgetPasswordApiClient>(
      () => _i478.ForgetPasswordApiClient(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i749.RegisterApiService>(
      () => _i749.RegisterApiService(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i425.OccasionApiClient>(
      () => _i425.OccasionApiClient(gh<_i361.Dio>()),
    );
    gh.singleton<_i22.CategoriesApiClient>(
      () => _i22.CategoriesApiClient(gh<_i361.Dio>()),
    );
    gh.factory<_i251.LoginApiClient>(
      () => _i251.LoginApiClient(gh<_i361.Dio>()),
    );
    gh.factory<_i618.BestSellerApiClient>(
      () => _i618.BestSellerApiClient(gh<_i361.Dio>()),
    );
    gh.factory<_i244.ChangePasswordApiClient>(
      () => _i244.ChangePasswordApiClient(gh<_i361.Dio>()),
    );
    gh.factory<_i991.ProfileApiClient>(
      () => _i991.ProfileApiClient(gh<_i361.Dio>()),
    );
    gh.factory<_i850.BestSellerRemoteDataSourceContract>(
      () =>
          _i395.BestSellerRemoteDataSourceImpl(gh<_i618.BestSellerApiClient>()),
    );
    gh.factory<_i462.ProductsRemoteDataSourceContract>(
      () => _i508.ProductsRemoteDataSourceImpl(gh<_i890.ProductsApiClient>()),
    );
    gh.factory<_i1062.ProductsRepoContract>(
      () => _i368.ProductsRepositoryImpl(
        gh<_i462.ProductsRemoteDataSourceContract>(),
      ),
    );
    gh.factory<_i181.CartRemoteDataSourceContract>(
      () => _i354.CartRemoteDataSourceImpl(gh<_i421.CartApiClient>()),
    );
    gh.factory<_i167.ChangePasswordRemoteDataSourceContract>(
      () => _i161.ChangePasswordRemoteDataSourceImpl(
        gh<_i244.ChangePasswordApiClient>(),
      ),
    );
    gh.factory<_i333.ChangePasswordRepoContract>(
      () => _i49.ChangePasswordRepoImpl(
        gh<_i167.ChangePasswordRemoteDataSourceContract>(),
      ),
    );
    gh.factory<_i874.ChangePasswordUseCase>(
      () => _i874.ChangePasswordUseCase(gh<_i333.ChangePasswordRepoContract>()),
    );
    gh.factory<_i932.ForgetPasswordRemoteDataSourceContract>(
      () => _i1022.ForgetPasswordRemoteDataSourceImpl(
        forgetPasswordApiClient: gh<_i478.ForgetPasswordApiClient>(),
      ),
    );
    gh.factory<_i335.OccasionRemoteDataSource>(
      () => _i30.OccasionRemoteDataSourceImpl(gh<_i425.OccasionApiClient>()),
    );
    gh.factory<_i117.LoginRemoteDataSource>(
      () => _i584.LoginRemoteDataSourceImpl(gh<_i251.LoginApiClient>()),
    );
    gh.factory<_i896.EditeProfileRemoteDataSource>(
      () =>
          _i372.EditeProfileRemoteDataSourceImpl(gh<_i991.ProfileApiClient>()),
    );
    gh.factory<_i919.GetProductsUseCase>(
      () => _i919.GetProductsUseCase(gh<_i1062.ProductsRepoContract>()),
    );
    gh.factory<_i949.BestSellerRepoContract>(
      () => _i1026.BestSellerRepoImpl(
        gh<_i850.BestSellerRemoteDataSourceContract>(),
      ),
    );
    gh.factory<_i865.RegisterRemoteDatasourceContract>(
      () => _i626.RegisterRemoteDatasourceImpl(gh<_i749.RegisterApiService>()),
    );
    gh.factory<_i917.ForgetPasswordRepoContract>(
      () => _i55.ForgetPasswordRepoImpl(
        gh<_i932.ForgetPasswordRemoteDataSourceContract>(),
      ),
    );
    gh.factory<_i1047.CategoriesRemoteDataSourceContract>(
      () => _i311.CategoriesRemoteDataSourceImpl(
        categoriesApiClient: gh<_i22.CategoriesApiClient>(),
      ),
    );
    gh.factory<_i137.LoginRepository>(
      () => _i17.LoginRepositoryImpl(
        gh<_i117.LoginRemoteDataSource>(),
        gh<_i488.LoginLocalDataSource>(),
      ),
    );
    gh.factory<_i420.CartRepoContract>(
      () => _i938.CartRepoImpl(gh<_i181.CartRemoteDataSourceContract>()),
    );
    gh.factory<_i79.UpdateCartItemQuantityUseCase>(
      () => _i79.UpdateCartItemQuantityUseCase(gh<_i420.CartRepoContract>()),
    );
    gh.factory<_i79.RegisterRepoContract>(
      () =>
          _i277.RegisterRepoImpl(gh<_i865.RegisterRemoteDatasourceContract>()),
    );
    gh.factory<_i511.ChangePasswordCubit>(
      () => _i511.ChangePasswordCubit(gh<_i874.ChangePasswordUseCase>()),
    );
    gh.factory<_i574.CategoriesRepoContract>(
      () => _i109.CategoriesRepoImpl(
        categoryRemoteDataSource:
            gh<_i1047.CategoriesRemoteDataSourceContract>(),
      ),
    );
    gh.factory<_i165.BestSellerUseCase>(
      () => _i165.BestSellerUseCase(gh<_i949.BestSellerRepoContract>()),
    );
    gh.factory<_i481.OccasionRepoContract>(
      () => _i886.OccasionRepositoryImpl(gh<_i335.OccasionRemoteDataSource>()),
    );
    gh.factory<_i5.AddItemToCartUseCase>(
      () => _i5.AddItemToCartUseCase(gh<_i420.CartRepoContract>()),
    );
    gh.factory<_i17.GetItemsCartUseCase>(
      () => _i17.GetItemsCartUseCase(gh<_i420.CartRepoContract>()),
    );
    gh.factory<_i158.RemoveItemFromCartUseCase>(
      () => _i158.RemoveItemFromCartUseCase(gh<_i420.CartRepoContract>()),
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
    gh.factory<_i608.EditeProfileRepoContract>(
      () =>
          _i758.EditeProfileRepoImpl(gh<_i896.EditeProfileRemoteDataSource>()),
    );
    gh.factory<_i517.EditProfileUseCase>(
      () => _i517.EditProfileUseCase(gh<_i608.EditeProfileRepoContract>()),
    );
    gh.factory<_i579.GetProfileUseCase>(
      () => _i579.GetProfileUseCase(gh<_i608.EditeProfileRepoContract>()),
    );
    gh.factory<_i627.UploadProfilePhotoUseCase>(
      () =>
          _i627.UploadProfilePhotoUseCase(gh<_i608.EditeProfileRepoContract>()),
    );
    gh.factory<_i630.LoginUseCase>(
      () => _i630.LoginUseCase(gh<_i137.LoginRepository>()),
    );
    gh.factory<_i206.RegisterCubit>(
      () => _i206.RegisterCubit(gh<_i146.RegisterUseCase>()),
    );
    gh.factory<_i421.EditeProfileCubit>(
      () => _i421.EditeProfileCubit(
        gh<_i579.GetProfileUseCase>(),
        gh<_i517.EditProfileUseCase>(),
        gh<_i627.UploadProfilePhotoUseCase>(),
        gh<_i558.FlutterSecureStorage>(),
      ),
    );
    gh.factory<_i132.CartCubit>(
      () => _i132.CartCubit(
        gh<_i17.GetItemsCartUseCase>(),
        gh<_i5.AddItemToCartUseCase>(),
        gh<_i158.RemoveItemFromCartUseCase>(),
        gh<_i79.UpdateCartItemQuantityUseCase>(),
      ),
    );
    gh.factory<_i31.CategoriesUseCase>(
      () => _i31.CategoriesUseCase(
        categoriesRepoContract: gh<_i574.CategoriesRepoContract>(),
      ),
    );
    gh.factory<_i413.GetOccasionsUseCase>(
      () => _i413.GetOccasionsUseCase(gh<_i481.OccasionRepoContract>()),
    );
    gh.factory<_i609.LoginCubit>(
      () => _i609.LoginCubit(gh<_i630.LoginUseCase>()),
    );
    gh.factory<_i610.OccasionCubit>(
      () => _i610.OccasionCubit(gh<_i413.GetOccasionsUseCase>()),
    );
    gh.factory<_i648.HomeSharedCubit>(
      () => _i648.HomeSharedCubit(
        gh<_i31.CategoriesUseCase>(),
        gh<_i919.GetProductsUseCase>(),
        gh<_i165.BestSellerUseCase>(),
        gh<_i413.GetOccasionsUseCase>(),
      ),
    );
    return this;
  }
}

class _$SecurityStorageModule extends _i477.SecurityStorageModule {}

class _$DioModule extends _i977.DioModule {}
