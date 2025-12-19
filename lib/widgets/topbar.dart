import 'package:flutter/material.dart';

import 'circle_widget.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          spacing: 12,
          children: [
            CircleWidget(child: Icon(Icons.person)),
            Text(
              "Hi, James",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Spacer(),
            CircleWidget(child: Icon(Icons.notifications)),
          ],
        ),
      ),
    );
  }
}
