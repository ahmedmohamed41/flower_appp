import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'profile_states.dart';

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  final FlutterSecureStorage _secureStorage;

  ProfileCubit(this._secureStorage) : super(const ProfileInitial());

  Future<void> loadUserProfile() async {
    emit(const ProfileLoading());
    try {
      final name = await _secureStorage.read(key: 'user_name') ?? 'User';
      final email = await _secureStorage.read(key: 'user_email') ?? '';
      final photo = await _secureStorage.read(key: 'user_photo') ?? '';

      emit(
        ProfileLoaded(
          name: name.isEmpty ? 'User' : name,
          email: email,
          photoUrl: photo,
        ),
      );
    } catch (e) {
      emit(const ProfileError('Failed to load profile data'));
    }
  }

  Future<void> logout() async {
    emit(const LogoutLoading());
    try {
      await _secureStorage.deleteAll();
      emit(const LogoutSuccess());
    } catch (e) {
      emit(const ProfileError('Logout failed, please try again'));
    }
  }
}
