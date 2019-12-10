import 'package:flutter/material.dart';

import 'ThemesData.dart';

class ChangeThemeState {
  final ThemeData themeData;

  ChangeThemeState({@required this.themeData});

  factory ChangeThemeState.lightTheme() {
    return ChangeThemeState(themeData: kLightTheme);
  }

  factory ChangeThemeState.darkTheme() {
    return ChangeThemeState(themeData: kDarkTheme);
  }
  factory ChangeThemeState.amoledTheme() {
    return ChangeThemeState(themeData: kAmoledTheme);
  }
  factory ChangeThemeState.kLightGreenTheme() {
    return ChangeThemeState(themeData: kLightGreenTheme);
  }

  factory ChangeThemeState.kLBlackTheme() {
    return ChangeThemeState(themeData: kLBlackTheme);
  }
}
