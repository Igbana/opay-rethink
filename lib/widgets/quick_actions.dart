import 'package:flutter/material.dart';

import 'circle_widget.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .all(16),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 16,
        children: [
          Text(
            "Quick Actions",
            style: TextStyle(fontSize: 16, fontWeight: .w700),
          ),
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              CircleWidget(
                label: "Airtime",
                child: Icon(Icons.sim_card),
              ),
              CircleWidget(
                label: "Data",
                child: Icon(Icons.wifi_tethering),
              ),
              CircleWidget(
                label: "Safebox",
                child: Icon(Icons.security),
              ),
              CircleWidget(
                label: "Betting",
                child: Icon(Icons.sim_card),
              ),
              CircleWidget(
                label: "More",
                child: Icon(Icons.grid_view_rounded),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
