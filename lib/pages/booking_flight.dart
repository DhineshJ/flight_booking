import 'package:flutter/material.dart';

import '../widgets/flight_duration.dart';
import '../widgets/title.dart';

class BookingFlight extends StatefulWidget {
  const BookingFlight({super.key});

  @override
  State<BookingFlight> createState() => _BookingFlightState();
}

class _BookingFlightState extends State<BookingFlight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.blueAccent,
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const MainTitle(
                      textInput: 'Booking Your \nFlight',
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: FloatingActionButton(
                          backgroundColor: Colors.white,
                          onPressed: () {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.network(
                              "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80",
                              width: 40,
                              height: 40,
                            ),
                          )),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      'One Way',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      'Round Trip',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const FlightDuration(
                  duration: "2h 55m",
                  fromCode: "BSW",
                  fromLocation: "Jakarta",
                  fromTo: "Lucas Trip to Bhusan",
                  toCode: "ARV",
                  toLocation: "Ashland",
                  // forTransparent: true,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: MainTitle(
                            textInput: 'Departure',
                            mediumSizeText: true,
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(
                                Icons.calendar_month,
                                color: Colors.orange,
                              ),
                              Text("21 May, 2022"),
                            ],
                          ),
                        )
                      ],
                    ),
                    const AddingPassengers(
                      category: 'Adults',
                      icon: Icon(Icons.remove),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    AddingPassengers(
                      category: 'Children',
                      icon: Icon(Icons.remove),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    AddingPassengers(
                      category: 'Infants',
                      icon: Icon(Icons.remove),
                    )
                  ],
                ),
                const MainTitle(
                  textInput: "Cabin",
                  mediumSizeText: true,
                ),
                SizedBox(
                  height: 55,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      TicketClass(classType: 'Economy'),
                      TicketClass(classType: 'Business'),
                      TicketClass(classType: 'First Class'),
                      TicketClass(classType: 'Premium'),
                      TicketClass(classType: 'Elite'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TicketClass extends StatelessWidget {
  const TicketClass({
    super.key,
    required this.classType,
  });
  final String classType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.blue,
        ),
        child: Center(
            child: Text(
          classType,
          style: const TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}

class AddingPassengers extends StatelessWidget {
  const AddingPassengers({
    super.key,
    required this.category,
    required this.icon,
  });
  final String category;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MainTitle(
            textInput: category,
            mediumSizeText: true,
          ),
        ),
        Container(
          height: 70,
          width: 160,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                  mini: true,
                  backgroundColor: Colors.red,
                  onPressed: () {},
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0), child: icon)),
              const Icon(
                Icons.people,
                // color: Colors.orange,
              ),
              FloatingActionButton(
                  mini: true,
                  backgroundColor: Colors.green,
                  onPressed: () {},
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: const Icon(Icons.add))),
            ],
          ),
        )
      ],
    );
  }
}
