// Class segue o padrão singleton

import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;
  // Construtor privado, logo ngm vai poder instanciar, a não ser ela mesma
  ColorsApp._();

  static ColorsApp get instance {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primaryColor => const Color(0xff007D21);
  Color get secondaryColor => const Color(0xffF88B0C);
}

extension ColorsAppExtensions on BuildContext {
  ColorsApp get colors => ColorsApp.instance;
}
