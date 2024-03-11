import 'package:app_delivery/app/core/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../styles/app_styles.dart';
import '../styles/colors_app.dart';

class ThemeConfig {
  ThemeConfig._();
  // Criando a variavel _defaultBorder, possibilita reaproveitamento de código
  // para reutilizar em outro borders
  static final _defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
      color: Colors.grey[400]!,
    ),
  );

  static final theme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(color: Colors.white),
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    primaryColor: ColorsApp.instance.primaryColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsApp.instance.primaryColor,
      primary: ColorsApp.instance.primaryColor,
      secondary: ColorsApp.instance.secondaryColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: AppStyles.instance.primaryButton,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
      isDense: true,
      contentPadding: const EdgeInsets.all(13),
      border: _defaultInputBorder,
      enabledBorder: _defaultInputBorder,
      focusedBorder: _defaultInputBorder,
      labelStyle: TextStyles.instance.textRegular.copyWith(color: Colors.black),
      errorStyle: TextStyles.instance.textRegular.copyWith(
        color: Colors.redAccent,
      ),
    ),
  );
}
