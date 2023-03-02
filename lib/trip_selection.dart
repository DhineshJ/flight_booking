import 'package:flight_booking/widgets/Tabs.dart';
import 'package:flight_booking/widgets/title.dart';
import 'package:flutter/material.dart';

import 'pages/flight_details.dart';
import 'widgets/sorting.dart';

class TripSelection extends StatefulWidget {
  const TripSelection({super.key});

  @override
  State<TripSelection> createState() => _TripSelectionState();
}

class _TripSelectionState extends State<TripSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DefaultTabController(
          length: 3,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                5,
              ),
            ),
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.blueAccent,
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: MainTitle(
                              textInput: "Let's Book Your\nFlight",
                              color: Colors.white,
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  offset: const Offset(0, 3))
                            ],
                          ),
                          height: 300,
                          width: 350,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: const [
                                SizedBox(
                                  height: 15,
                                ),
                                TabsContainer(),
                                SizedBox(
                                  height: 15,
                                ),
                                TabsContainerViews(),
                              ],
                            ),
                          )),
                      const Sorting(sort: "Sort By"),
                      const FlightDetails(
                        color: Colors.blueAccent,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
