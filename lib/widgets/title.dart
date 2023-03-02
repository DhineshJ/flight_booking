import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  const MainTitle(
      {super.key,
      required this.textInput,
      this.descriptionText = false,
      this.mediumSizeText = false,
      this.color = Colors.black87});
  final String textInput;
  final bool descriptionText;
  final bool mediumSizeText;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      textInput,
      style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: descriptionText
              ? 14
              : mediumSizeText
                  ? 18
                  : 30),
    );
  }
}
