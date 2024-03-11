import 'package:flutter/material.dart';

class AcessButton1 extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final double? width;
  final double? height;
  final Color? color;

  const AcessButton1({
    Key? key,
    required this.onPressed,
    required this.label,
    this.width,
    this.height,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 7,
          foregroundColor: Colors.white,
          side: const BorderSide(width: 2.0, color: Colors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          backgroundColor: Colors.green,
        ),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
