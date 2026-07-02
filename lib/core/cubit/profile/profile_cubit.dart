import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());

  void loadProfile() {
    emit(ProfileLoading());
    // Simulate loading profile data
    Future.delayed(Duration(seconds: 2), () {
      emit(ProfileLoaded(name: "John Doe", email: "john.doe@example.com"));
    });
  }

  void cancelProfile() {
    emit(ProfileCancelled());
  }
}
