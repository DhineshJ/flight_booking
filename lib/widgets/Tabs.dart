import 'package:flutter/material.dart';

class TabsContainerViews extends StatefulWidget {
  const TabsContainerViews({
    super.key,
  });

  @override
  State<TabsContainerViews> createState() => _TabsContainerViewsState();
}

class _TabsContainerViewsState extends State<TabsContainerViews> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _toController = TextEditingController();
  @override
  void initState() {
    super.initState();

    _controller.text = 'London, NCD';
    _toController.text = 'Barstow, BSW';
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        children: [
          Container(
            color: Colors.white,
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FromLocation(
                      controller: _controller,
                      imageLocation: 'assets/plane.png',
                      labelText: 'From',
                      rotateDegree: 51,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FromLocation(
                      controller: _toController,
                      imageLocation: 'assets/plane.png',
                      labelText: 'To',
                      rotateDegree: 48,
                    ),
                  ],
                ),
                Positioned(
                  top: 70,
                  right: 80,
                  child: Container(
                    width: 50,
                    height: 50,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ]),

                    child: const Icon(
                      Icons.swap_vert,
                      color: Colors.white,
                      size: 30,
                      // fill: 1.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Center(
            child: Text('This is Tab 2'),
          ),
          const Center(
            child: Text('This is Tab 3'),
          ),
        ],
      ),
    );
  }
}

class FromLocation extends StatelessWidget {
  const FromLocation({
    super.key,
    required TextEditingController controller,
    required this.imageLocation,
    required this.labelText,
    required this.rotateDegree,
  }) : _controller = controller;

  final TextEditingController _controller;
  final String imageLocation;
  final String labelText;
  final double rotateDegree;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
          child: TextField(
        controller: _controller,
        decoration: InputDecoration(
            prefixIcon: Transform.rotate(
              angle: rotateDegree,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 20,
                  width: 20,
                  child: Image.asset(
                    imageLocation,
                  ),
                ),
              ),
            ),
            labelText: labelText,
            // hintText: 'flight',
            fillColor: Colors.white,
            filled: true,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      )),
    );
  }
}

class TabsContainer extends StatelessWidget {
  const TabsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      // color: Colors.white38,
      child: TabBar(
        unselectedLabelColor: Colors.black,
        indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(15), // Creates border
            color: Colors.blueAccent), //Change back
        tabs: const [
          Expanded(
            child: Tab(
              text: 'One Way',
            ),
          ),
          Tab(
            text: 'Round-Trip',
          ),
          Tab(
            text: 'Multi-City',
          ),
        ],
      ),
    );
  }
}
