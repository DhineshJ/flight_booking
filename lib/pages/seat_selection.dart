import 'package:flutter/material.dart';

import '../widgets/title.dart';

class SelectSeat extends StatefulWidget {
  const SelectSeat({super.key});

  @override
  State<SelectSeat> createState() => _SelectSeatState();
}

class _SelectSeatState extends State<SelectSeat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const MainTitle(textInput: 'Select Seat'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          child: Container(
            height: 200,
            width: 400,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      MainTitle(
                        textInput: "Indian Airlines",
                        mediumSizeText: true,
                      ),
                      Icon(Icons.more_vert)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const MainTitle(
                        textInput: "SFO",
                        color: Colors.blue,
                        mediumSizeText: true,
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          const Text(
                              '   ---------------------------------------   '),
                          Transform.rotate(
                              angle: 39.3,
                              child: const Icon(
                                Icons.flight,
                                color: Colors.blue,
                              ))
                        ],
                      ),
                      const MainTitle(
                        textInput: "NYC",
                        color: Colors.orange,
                        mediumSizeText: true,
                      ),
                    ],
                  ),
                ),
                // Second row

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      MainTitle(
                        textInput: "10:00 AM",
                        color: Colors.grey,
                        mediumSizeText: true,
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      MainTitle(
                        textInput: "12:00 AM",
                        color: Colors.grey,
                        mediumSizeText: true,
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Business',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      const MainTitle(
                        textInput: "\$250",
                        mediumSizeText: true,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const MainTitle(
          textInput: "Business Class",
        ),
        SizedBox(
            height: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SeatSelection(
                      seatNo: "A1",
                      color: Colors.greenAccent,
                    ),
                    SeatSelection(
                      seatNo: "A2",
                    ),
                    SeatSelection(
                      seatNo: "A3",
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SeatSelection(
                      seatNo: "B1",
                    ),
                    SeatSelection(
                      seatNo: "B2",
                    ),
                    SeatSelection(
                      seatNo: "B3",
                    )
                  ],
                ),
                const SizedBox(width: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SeatSelection(
                      seatNo: "C1",
                    ),
                    SeatSelection(
                      seatNo: "C2",
                      color: Colors.redAccent,
                    ),
                    SeatSelection(
                      seatNo: "C3",
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SeatSelection(
                      seatNo: "D1",
                    ),
                    SeatSelection(
                      seatNo: "D2",
                    ),
                    SeatSelection(
                      seatNo: "D3",
                    )
                  ],
                ),
              ],
            )),
        const Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: MainTitle(textInput: 'Economy'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SeatSelection(
                  seatNo: "A1",
                ),
                SizedBox(
                  height: 10,
                ),
                SeatSelection(
                  seatNo: "A1",
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SeatSelection(
                  seatNo: "A1",
                ),
                SizedBox(
                  height: 10,
                ),
                SeatSelection(
                  seatNo: "A1",
                ),
              ],
            ),
            const SizedBox(
              width: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SeatSelection(
                  seatNo: "A1",
                ),
                SizedBox(
                  height: 10,
                ),
                SeatSelection(
                  seatNo: "A1",
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SeatSelection(
                  seatNo: "A1",
                ),
                SizedBox(
                  height: 10,
                ),
                SeatSelection(
                  seatNo: "A1",
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10)),
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SeatStatus(
                    color: Colors.white,
                    status: "Available",
                  ),
                  SeatStatus(
                    color: Colors.green,
                    status: "Booked",
                  ),
                  SeatStatus(
                    color: Colors.red,
                    status: "Selected",
                  )
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}

class SeatStatus extends StatelessWidget {
  const SeatStatus({
    super.key,
    required this.status,
    required this.color,
  });
  final String status;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(5)),
          height: 20,
          width: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            status,
            style: const TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}

class SeatSelection extends StatelessWidget {
  const SeatSelection(
      {super.key, required this.seatNo, this.color = Colors.white});
  final Color color;
  final String seatNo;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        height: 60,
        width: 60,
        child: Center(child: Text(seatNo)));
  }
}
