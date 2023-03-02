import 'package:flutter/material.dart';

import '../widgets/title.dart';
 

class FlightDetails extends StatelessWidget {
  const FlightDetails({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 350,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            // border: Border.all(),
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 170,
                width: 350,
                // color: Colors.blueAccent,
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(50)),

                child: UnconstrainedBox(
                  child: Image.network(
                    'https://freepngimg.com/thumb/plane/3-plane-png-image.png',
                    height: 150,
                    width: 200,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    MainTitle(
                        textInput: 'Flight Yogyakarta', descriptionText: true),
                    MainTitle(textInput: 'HJB- JKM', descriptionText: true)
                    // Text('Flight Yogyakarta'),
                    // Text("HJB- JKM"),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      child: Icon(Icons.more_time_sharp),
                    ),
                    const Text('10:00 AM -12:00 PM'),
                    const Spacer(),
                    TextButton(
                      child: Row(
                        children: const [
                          Text("Book Now"),
                          Icon(Icons.arrow_right)
                        ],
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
