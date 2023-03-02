import 'package:flutter/material.dart';

class Sorting extends StatelessWidget {
  const Sorting({
    super.key,
    required this.sort,
    this.largeText = false,
  });

  final String sort;
  final bool largeText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        children: [
          Text(sort,
              style: largeText
                  ? const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                  : const TextStyle(fontSize: 18)),
          const SizedBox(
            width: 15,
          ),
          Container(
            width: 170,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Center(
              child: DropdownButton(
                underline: const SizedBox(),
                items: const [
                  DropdownMenuItem(
                      child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Highest Price'),
                  )),
                ],
                onChanged: (value) {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
