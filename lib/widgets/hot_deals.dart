import 'package:flutter/material.dart';

const cl = [
  Color.fromARGB(255, 7, 43, 8),
  Color.fromARGB(255, 6, 95, 88),
  Colors.teal,
];

class HotDeals extends StatelessWidget {
  const HotDeals({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .all(16),
      child: Stack(
        alignment: .centerLeft,
        children: [
          for (int i = 0; i < 3; i++)
            Container(
              padding: .all((15 + (i).toDouble())),
              width: MediaQuery.of(context).size.width - (20 * (i + 1)),
              decoration: BoxDecoration(
                color: cl[i],
                borderRadius: .circular(16),
              ),
              child: Row(
                spacing: 16,
                children: [
                  Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                      borderRadius: .circular(12),
                      border: .all(color: Colors.grey),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        "Hot Deal for You",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: .w500,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Deposit #100-#1,000 and Get #100 instantly!",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: .w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
