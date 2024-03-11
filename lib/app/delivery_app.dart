import 'package:app_delivery/app/core/provider/application_bindings.dart';
import 'package:app_delivery/app/core/ui/theme/theme_config.dart';
import 'package:app_delivery/app/pages/home/home_router.dart';
import 'package:flutter/material.dart';

import 'pages/splash/splash_page.dart';

class DeliveryApp extends StatelessWidget {
  const DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Desta forma, irá aplicar injeção de dependencias por toda a aplicação de uma forma mais limpa e fácil
    return ApplicationBinding(
      child: MaterialApp(
        title: 'Calanguinho sushi: delivery app',
        theme: ThemeConfig.theme,
        routes: {
          '/': (context) => const SplashPage(),
          '/home': (context) => HomeRouter.page,
        },
      ),
    );
  }
}
