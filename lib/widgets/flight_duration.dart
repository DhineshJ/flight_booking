import 'package:flight_booking/widgets/title.dart';
import 'package:flutter/material.dart';

class FlightDuration extends StatelessWidget {
  const FlightDuration(
      {super.key,
      required this.fromTo,
      required this.fromCode,
      required this.fromLocation,
      required this.toCode,
      required this.toLocation,
      required this.duration,
      this.forTransparent = false,
      this.toShowTrip = true});

  final String fromTo;
  final String fromCode;
  final String fromLocation;
  final String toCode;
  final String toLocation;
  final String duration;
  final bool forTransparent;
  final bool toShowTrip;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: toShowTrip ? 150 : 80,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: !forTransparent ? Colors.white : Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: toShowTrip && !forTransparent,
            child: Padding(
              padding: const EdgeInsets.only(left: 40, top: 15, bottom: 15),
              child: MainTitle(textInput: fromTo, mediumSizeText: true),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    MainTitle(
                        textInput: fromCode,
                        color: forTransparent ? Colors.white : Colors.blue),
                    MainTitle(textInput: fromLocation, descriptionText: true),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.flight),
                    MainTitle(textInput: duration, descriptionText: true),
                  ],
                ),
                Column(
                  children: [
                    MainTitle(textInput: toCode, color: Colors.orange),
                    MainTitle(textInput: toLocation, descriptionText: true),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
