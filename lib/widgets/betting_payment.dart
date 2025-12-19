import 'package:flutter/material.dart';

class BettingPayment extends StatelessWidget {
  const BettingPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(vertical: 32, horizontal: 16),
      decoration: BoxDecoration(
        gradient: RadialGradient(
          focal: Alignment.bottomCenter,
          radius: 2,
          colors: [Colors.orange.shade50, Colors.white, Colors.white],
        ),
        border: .symmetric(horizontal: BorderSide(color: Colors.grey)),
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
                "Betting Payment",
                style: TextStyle(fontSize: 16, fontWeight: .w700),
              ),
              SizedBox(
                width: 210,
                child: Text(
                  "Fund betting account with #100 or more to get up to #100 cashback",
                  style: TextStyle(fontSize: 11, fontWeight: .w600),
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
            padding: .symmetric(vertical: 18, horizontal: 36),
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: .circular(32),
            ),
            child: Text(
              "Go",
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
