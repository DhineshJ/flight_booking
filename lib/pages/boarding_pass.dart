import 'package:flight_booking/pages/intro.dart';
import 'package:flutter/material.dart';

import '../widgets/flight_duration.dart';
import '../widgets/title.dart';
import 'recent_flights.dart';
import 'search_flights.dart';

class BoardingPass extends StatefulWidget {
  const BoardingPass({super.key});

  @override
  State<BoardingPass> createState() => _BoardingPassState();
}

class _BoardingPassState extends State<BoardingPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.grey[200],
          )),
      Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.blueAccent,
          )),
      Column(
        children: [
          const ProfileSection(),
          const MainTitle(
            textInput: 'Boarding Pass',
            color: Colors.white,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 600,
            width: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Column(
              children: [
                SizedBox(
                  width: 350,
                  height: 125,
                  child: Image.network(
                      'https://static.theprint.in/wp-content/uploads/2023/01/ANI-20230121132505.jpg'),
                ),
                const MainTitle(
                  textInput: "Indian Airlines Flight MLI -18",
                  mediumSizeText: true,
                ),
                DashedBorder(count: 30),
                const FlightDuration(
                  toShowTrip: false,
                  duration: "2h 55m",
                  fromCode: "BSW",
                  fromLocation: "Jakarta",
                  fromTo: "Lucas Trip to Bhusan",
                  toCode: "ARV",
                  toLocation: "Ashland",
                  // forTransparent: true,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      PassDurationAndTime(
                        icon: Icon(Icons.calendar_month, color: Colors.orange),
                        input: 'Time',
                        inputType: '10:00 - 12:00',
                      ),
                      PassDurationAndTime(
                        icon:
                            Icon(Icons.more_time_rounded, color: Colors.green),
                        input: 'Date',
                        inputType: 'June 30, 2022',
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        Text('Gate'),
                        MainTitle(
                          textInput: 'C2',
                          mediumSizeText: true,
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        Text('Seat'),
                        MainTitle(
                          textInput: 'A2',
                          mediumSizeText: true,
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        Text('Flight No'),
                        MainTitle(
                          textInput: 'ZCVD',
                          mediumSizeText: true,
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        Text('Class'),
                        MainTitle(
                          textInput: 'Business',
                          mediumSizeText: true,
                        )
                      ],
                    )
                  ],
                ),
                DashedBorder(count: 30),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 100,
                    child: Image.network(
                        "https://www.pngall.com/wp-content/uploads/2/Barcode-PNG-Photo.png"),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 40.0, vertical: 20.0),
                primary: Colors.blue,
                minimumSize: const Size.fromHeight(50), //
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              onPressed: () {},
              child: const Text(
                'Download Ticket',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      )
    ]));
  }
}

class DashedBorder extends StatelessWidget {
  const DashedBorder({
    super.key,
    required this.count,
  });
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(count, (index) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 20),
            child: Container(
              height: 2,
              width: 3,
              color: Colors.grey[200],
            ),
          ),
        );
      }),
    );
  }
}

class PassDurationAndTime extends StatelessWidget {
  const PassDurationAndTime({
    super.key,
    required this.inputType,
    required this.input,
    required this.icon,
  });
  final String inputType;
  final String input;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 150,
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(10)
          // color: Colors.black,
          ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            icon,
            const SizedBox(
              height: 10,
            ),
            Text(input),
            Text(inputType),
          ],
        ),
      ),
    );
  }
}
