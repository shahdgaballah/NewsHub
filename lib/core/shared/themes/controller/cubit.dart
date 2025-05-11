import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newz_app/core/shared/themes/controller/state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<ThemeModeStates> {
  ThemeCubit() : super(InitialThemeModeState());

  static ThemeCubit get(context) => BlocProvider.of(context);

  bool isDark = true;

  void changeThemeMode() {
    isDark = !isDark;
    emit(ChangeThemeModeState());
  }
}