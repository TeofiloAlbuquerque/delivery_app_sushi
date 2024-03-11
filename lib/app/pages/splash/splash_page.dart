import 'package:app_delivery/app/core/ui/helpers/size_extensions.dart';
import 'package:app_delivery/app/core/ui/widgets/acess_button.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: const Color(0xFFf6f6f6),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: context.screenWidth,
                child: Image.asset(
                  'assets/images/prato_sushi.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: context.percentHeight(.20),
                  ),
                  Image.asset(
                    'assets/images/logo_calanguinho_sushi.png',
                    height: context.percentHeight(.33),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  AcessButton(
                    height: 45,
                    width: context.percentWidth(.65),
                    label: 'Acessar',
                    onPressed: () {
                      Navigator.of(context).popAndPushNamed('/home');
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
