import 'package:flutter/material.dart';

import '../widgets/airline_timings.dart';
import '../widgets/title.dart';
import 'flight_details.dart';
 

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MainTitle(textInput: 'Checkout'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: Container(
        color: Colors.grey[300],
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                height: 100,
                // width: 40,
                // color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    PaymentPartners(
                        iconPath: 'assets/master.png', partnerName: 'Master'),
                    PaymentPartners(
                        iconPath: 'assets/paypal.png', partnerName: 'Paypal'),
                    PaymentPartners(
                        iconPath: 'assets/visa.png', partnerName: 'Visa'),
                    PaymentPartners(
                        iconPath: 'assets/symbols.png',
                        partnerName: 'Payoneer'),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const FlightDetails(color: Colors.white),
            const SizedBox(
              height: 20,
            ),
            const AirlineWithTimings(
              color: Colors.white,
              departureTime: "12:30 Am",
              imageURL:
                  "https://assets.stickpng.com/images/587b511a44060909aa603a81.png",
              arrivalTime: '01:30 Am',
              estimate: '12:30 Am',
              price: 'Rs 450',
            ),
            const SizedBox(
              height: 20,
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
                  'Proceed',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





class PaymentPartners extends StatelessWidget {
  const PaymentPartners({
    super.key,
    required this.partnerName,
    required this.iconPath,
  });
  final String partnerName;
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.black12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 50, child: Image.asset(iconPath)),
          Text(partnerName)
        ],
      ),
    );
  }
}
