import 'package:flight_booking/pages/boarding_pass.dart';
import 'package:flight_booking/pages/booking_flight.dart';
import 'package:flight_booking/pages/intro.dart';
import 'package:flight_booking/pages/seat_selection.dart';
import 'package:flight_booking/trip_selection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'pages/checkout.dart';
import 'pages/recent_flights.dart';
import 'pages/search_flights.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Hiding status bar.
    SystemChrome.setEnabledSystemUIOverlays([]);

    return MaterialApp(
      title: 'UI Listing Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainListing(),
    );
  }
}

// TripSelection(), 2
// SearchFlight() , 3
// CheckOut() , 4

// RecentFlights() , 5
// BoardingPass() ,6
// SelectSeat() 8

class MainListing extends StatelessWidget {
  const MainListing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main Listing Page')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(15)),
                    child: GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const IntroPage())),
                        child: const Center(
                            child: Text(
                          'Page 1',
                          style: TextStyle(color: Colors.white),
                        ))),
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(15)),
                    child: GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TripSelection())),
                        child: const Center(
                            child: Text(
                          'Page 2',
                          style: TextStyle(color: Colors.white),
                        ))),
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(15)),
                    child: GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SearchFlight())),
                        child: const Center(
                            child: Text(
                          'Page 3',
                          style: TextStyle(color: Colors.white),
                        ))),
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(15)),
                    child: GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CheckOut())),
                        child: const Center(
                            child: Text(
                          'Page 4',
                          style: TextStyle(color: Colors.white),
                        ))),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(15)),
                    child: GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BoardingPass())),
                        child: const Center(
                            child: Text(
                          'Page 5',
                          style: TextStyle(color: Colors.white),
                        ))),
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(15)),
                    child: GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BookingFlight())),
                        child: const Center(
                            child: Text(
                          'Page 6',
                          style: TextStyle(color: Colors.white),
                        ))),
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(15)),
                    child: GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RecentFlights())),
                        child: const Center(
                            child: Text(
                          'Page 7',
                          style: TextStyle(color: Colors.white),
                        ))),
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(15)),
                    child: GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SelectSeat())),
                        child: const Center(
                            child: Text(
                          'Page 8',
                          style: TextStyle(color: Colors.white),
                        ))),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
