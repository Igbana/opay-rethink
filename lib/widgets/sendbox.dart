import 'package:flutter/material.dart';

import 'circle_widget.dart';

class SendBox extends StatelessWidget {
  const SendBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(blurRadius: 16, color: Colors.grey.shade600)],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Send to"),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleWidget(
                  label: "Add money",
                  color: Colors.tealAccent[700],
                  child: Icon(Icons.add_circle, color: Colors.white, size: 28),
                ),
                VerticalDivider(),
                CircleWidget(label: "Opay Account", child: Icon(Icons.wallet)),
                CircleWidget(
                  label: "Other Banks",
                  child: Icon(Icons.account_balance),
                ),
                VerticalDivider(),
                CircleWidget(label: "Withdraw", child: Icon(Icons.credit_card)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
