import 'package:flutter/material.dart';

ThemeData _themeLight = ThemeData.light();

ThemeData themeLight = _themeLight.copyWith(
  chipTheme: _chipThemeData(_themeLight.chipTheme),
  splashColor: myOrange,
  dialogTheme: _dialogTheme(_themeLight.dialogTheme),
  colorScheme: _colorScheme(_themeLight.colorScheme),
  primaryColorDark: myOrange,
  primaryColorLight: myblack,
  textTheme: _textLight(_themeLight.textTheme),
  appBarTheme: _appBarTheme(_themeLight.appBarTheme),
  iconTheme: _iconTheme(_themeLight.iconTheme),
  bottomAppBarTheme: _bottomAppBarTheme(_themeLight.bottomAppBarTheme),
  buttonTheme: _buttonTheme(_themeLight.buttonTheme),
  tabBarTheme: _tabBarTheme(_themeLight.tabBarTheme),
  bottomNavigationBarTheme:
      _bottomNavigationBarTheme(_themeLight.bottomNavigationBarTheme),
  cardTheme: _cardTheme(_themeLight.cardTheme),
  elevatedButtonTheme: _elevatedbuttonTheme(_themeLight.elevatedButtonTheme),
  progressIndicatorTheme:
      _progressIndicatorThemeData(_themeLight.progressIndicatorTheme),
);

ChipThemeData _chipThemeData(ChipThemeData base) {
  return base.copyWith(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
    backgroundColor: myblack,
    selectedColor: myOrange,
    labelStyle: const TextStyle(color: Colors.white),
  );
}

ColorScheme _colorScheme(ColorScheme base) {
  return base.copyWith(
    primary: myOrange,
    onPrimary: myblack,
  );
}

DialogTheme _dialogTheme(DialogTheme base) {
  return base.copyWith(backgroundColor: Colors.black12);
}

TextTheme _textLight(TextTheme base) {
  return base.copyWith(
      headline4:
          TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: myblack));
}

ProgressIndicatorThemeData _progressIndicatorThemeData(
    ProgressIndicatorThemeData base) {
  return base.copyWith(color: myblack);
}

AppBarTheme _appBarTheme(AppBarTheme base) {
  return base.copyWith(
      backgroundColor: myblack,
      titleTextStyle:
          TextStyle(color: myOrange, fontSize: 20, fontWeight: FontWeight.w500),
      iconTheme: IconThemeData(color: myOrange));
}

BottomNavigationBarThemeData _bottomNavigationBarTheme(
    BottomNavigationBarThemeData base) {
  return base.copyWith(
      backgroundColor: myblack,
      selectedIconTheme: IconThemeData(color: myOrange),
      selectedLabelStyle: TextStyle(color: myOrange),
      selectedItemColor: myOrange);
}

BottomAppBarTheme _bottomAppBarTheme(BottomAppBarTheme base) {
  return base.copyWith(color: myblack);
}

ElevatedButtonThemeData _elevatedbuttonTheme(ElevatedButtonThemeData base) {
  ElevatedButtonThemeData newThemeData = ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(myOrange),
      foregroundColor: MaterialStateProperty.all(myblack),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
    // style: base.style?.copyWith(

    // shape: MaterialStateProperty.all(
    // RoundedRectangleBorder(
    // borderRadius: BorderRadius.circular(15),
    // ),
    // ),
    // ),
  );
  return newThemeData;
}

TabBarTheme _tabBarTheme(TabBarTheme base) {
  return base.copyWith(
    labelStyle: const TextStyle(fontSize: 20),
    labelColor: myblack,
  );
}

ButtonThemeData _buttonTheme(ButtonThemeData base) {
  return base.copyWith(
    buttonColor: myOrange,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
  );
}

IconThemeData _iconTheme(IconThemeData base) {
  return base.copyWith(color: myOrange);
}

CardTheme _cardTheme(CardTheme base) {
  return base.copyWith(
    elevation: 10,
    margin: const EdgeInsets.all(10),
    clipBehavior: Clip.hardEdge,
    color: myOrange,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  );
}

Color? myOrange = Colors.deepOrange[100];
Color? myblack = Colors.black54;
