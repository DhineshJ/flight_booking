import 'package:flight_booking/widgets/timings.dart';
import 'package:flutter/material.dart';

class AirlineWithTimings extends StatelessWidget {
  const AirlineWithTimings({
    super.key,
    required this.imageURL,
    required this.departureTime,
    required this.arrivalTime,
    required this.estimate,
    required this.price,
    this.color = Colors.white,
  });
  final String imageURL;
  final String departureTime;
  final String arrivalTime;
  final String estimate;
  final String price;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 350,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 130,
            width: 75,
            child: Image.network(imageURL),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Timings(input: 'Departure', inputTime: departureTime),
                  const SizedBox(
                    width: 20,
                  ),
                  Timings(input: 'Arrive', inputTime: arrivalTime),
                ],
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Timings(input: 'Estimate', inputTime: estimate),
                  const SizedBox(
                    width: 20,
                  ),
                  Timings(input: 'Price', inputTime: price),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
