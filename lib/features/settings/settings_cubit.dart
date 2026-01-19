import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(const SettingsState());

  void setThemeMode(ThemeMode mode) => emit(state.copyWith(themeMode: mode));

  void toggleLightDark() {
    final next = (state.themeMode == ThemeMode.dark) ? ThemeMode.light : ThemeMode.dark;
    emit(state.copyWith(themeMode: next));
  }

  void setLocale(Locale locale) => emit(state.copyWith(locale: locale));

  void toggleArEn() {
    final next = (state.locale.languageCode == 'ar') ? const Locale('en') : const Locale('ar');
    emit(state.copyWith(locale: next));
  }
}
