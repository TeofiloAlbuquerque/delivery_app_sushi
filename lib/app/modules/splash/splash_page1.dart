import 'package:app_delivery/app/core/ui/helpers/size_extensions.dart';
import 'package:app_delivery/app/core/ui/widgets/acess_button1.dart';
import 'package:flutter/material.dart';

class SplashPage1 extends StatelessWidget {
  const SplashPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        // BAB9B7
        color: const Color(0xFFf6f6f6),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: context.screenWidth,
                //height: context.percentHeight(.5),
                child: Image.asset(
                  'assets/images/prato_sushi.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: context.percentHeight(.20),
                    // height: context.percentHeight(.30),
                  ),
                  Image.asset(
                    'assets/images/logo_calanguinho_sushi_sem_fundo.png',
                    width: 230,
                    height: 230,
                  ),
                  const SizedBox(height: 100),
                  AcessButton1(
                    onPressed: () {},
                    label: 'Acessar',
                    width: context.percentWidth(.6),
                    height: 40,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
