abstract class ChangeThemeEvent {}

class DecideTheme extends ChangeThemeEvent {}

class LightTheme extends ChangeThemeEvent {
  @override
  String toString() => 'LightTheme';
}

class DarkTheme extends ChangeThemeEvent {
  @override
  String toString() => 'Dark Theme';
}

class AmoledTheme extends ChangeThemeEvent {
  @override
  String toString() => 'Amoled Theme';
}

class LightGreenTheme extends ChangeThemeEvent {
  @override
  String toString() => 'LightGreenTheme Theme';
}

class BlackTheme extends ChangeThemeEvent {
  @override
  String toString() => 'BlackTheme Theme';
}