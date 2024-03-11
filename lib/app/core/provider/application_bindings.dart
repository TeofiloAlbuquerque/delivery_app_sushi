import 'package:app_delivery/app/core/rest_client/custom_dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ApplicationBinding extends StatelessWidget {
  final Widget child;

  const ApplicationBinding({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Passamos todos os bindings disponibilizados pelo projeto
        Provider(
          create: (context) => CustomDio(),
        )
      ],
      child: child,
    );
  }
}
