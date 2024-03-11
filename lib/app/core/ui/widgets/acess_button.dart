import 'package:flutter/material.dart';

class AcessButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final Color? colorButton;
  final Color? colorText;
  const AcessButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.width,
    this.height = 50,
    this.colorButton = Colors.white,
    this.colorText = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      // Como sempre é o Pai que define o tamanho do ElevatedButton, devemos
      // utilizar um SizedBox
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(
            color: colorText,
          ),
        ),
      ),
    );
  }
}
