import 'package:app_delivery/app/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';

import 'text_styles.dart';

class AppStyles {
  static AppStyles? _instance;

  AppStyles._();

  static AppStyles get instance {
    _instance ??= AppStyles._();
    return _instance!;
  }

  ButtonStyle get primaryButton => ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: ColorsApp.instance.primaryColor,
        textStyle: TextStyles.instance.textButtonLabel,
      );
}

// Criamos uma extensão para poder acessarmos o AppStyles por meio do context
extension AppStylesExtensions on BuildContext {
  AppStyles get appStyles => AppStyles.instance;
}
