import 'package:flight_booking/widgets/title.dart';
import 'package:flutter/material.dart';

class Timings extends StatelessWidget {
  const Timings({
    super.key,
    required this.input,
    required this.inputTime,
  });
  final String input;
  final String inputTime;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(
          textInput: input,
          descriptionText: true,
        ),
        MainTitle(
          textInput: inputTime,
          color: Colors.blue,
          mediumSizeText: true,
        )
      ],
    );
  }
}
