import 'package:flutter/material.dart';

import '../widgets/flight_duration.dart';
import 'intro.dart';

class SearchFlight extends StatefulWidget {
  const SearchFlight({super.key});

  @override
  State<SearchFlight> createState() => _SearchFlightState();
}

class _SearchFlightState extends State<SearchFlight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0)),
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0)),
                // border: Border.all(),
                // borderRadius: BorderRadius.circular(50.0)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.blue[200],
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      prefixIcon: Icon(Icons.search),
                      // label:
                      labelText: "Search Flights"),
                ),
                const FlightDuration(
                  duration: "1h 55m",
                  fromCode: "MCL",
                  fromLocation: "Jakarta",
                  fromTo: "Business Trip to New York",
                  toCode: "NYC",
                  toLocation: "New York",
                ),
                const FlightDuration(
                  duration: "2h 55m",
                  fromCode: "BSW",
                  fromLocation: "Jakarta",
                  fromTo: "Lucas Trip to Bhusan",
                  toCode: "ARV",
                  toLocation: "Ashland",
                ),
                const FlightDuration(
                  duration: "1h 25m",
                  fromCode: "MSN",
                  fromLocation: "Chennai",
                  fromTo: "Business Trip to New York",
                  toCode: "IXM",
                  toLocation: "Madurai",
                ),
                const FlightDuration(
                  duration: "1h 35m",
                  fromCode: "TPJ",
                  fromLocation: "Tiruchirapalli",
                  fromTo: "Business Trip to New York",
                  toCode: "NYC",
                  toLocation: "Coimbatore",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


class CircularBorderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circular Border'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Circular Border Container',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: Center(
                child: Text(
                  'Normal Container',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
