import 'package:flutter/material.dart';

import '../widgets/airline_timings.dart';
import '../widgets/flight_duration.dart';
import '../widgets/sorting.dart';
import 'checkout.dart';

class RecentFlights extends StatefulWidget {
  const RecentFlights({super.key});

  @override
  State<RecentFlights> createState() => _RecentFlightsState();
}

class _RecentFlightsState extends State<RecentFlights> {
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
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)),
            )),
        Column(
          children: const [
            ProfileSection(),
            SizedBox(
              height: 10,
            ),
            FlightDuration(
              duration: "2h 55m",
              fromCode: "BSW",
              fromLocation: "Jakarta",
              fromTo: "Lucas Trip to Bhusan",
              toCode: "ARV",
              toLocation: "Ashland",
              forTransparent: true,
            ),
            Sorting(sort: "Recent Flights", largeText: true),
            AirlineWithTimings(
              departureTime: "12:30 Am",
              imageURL:
                  "https://assets.stickpng.com/images/587b511a44060909aa603a81.png",
              arrivalTime: '01:30 Am',
              estimate: '12:30 Am',
              price: 'Rs 450',
            ),
            SizedBox(
              height: 15,
            ),
            AirlineWithTimings(
              departureTime: "12:30 Am",
              imageURL:
                  "https://e7.pngegg.com/pngimages/40/199/png-clipart-logo-etihad-airways-brand-product-font-others-text-logo.png",
              arrivalTime: '01:30 Am',
              estimate: '12:30 Am',
              price: 'Rs 450',
            ),
            SizedBox(
              height: 15,
            ),
            AirlineWithTimings(
              departureTime: "12:30 Am",
              imageURL:
                  "https://w7.pngwing.com/pngs/243/639/png-transparent-heathrow-airport-british-airways-international-airlines-group-iberia-britishairways-blue-text-logo.png",
              arrivalTime: '01:30 Am',
              estimate: '12:30 Am',
              price: 'Rs 450',
            ),
          ],
        )
      ]),
    );
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.arrow_back),
          FloatingActionButton(
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
        ],
      ),
    );
  }
}
