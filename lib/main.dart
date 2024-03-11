import 'package:app_delivery/app/delivery_app.dart';
import 'package:flutter/material.dart';

import 'app/core/config/env/env.dart';

Future<void> main() async {
  // Carregar as variaveis de ambiente para memoria assim que o app for iniciado
  await Env.instance.load();
  runApp(const DeliveryApp());
}
