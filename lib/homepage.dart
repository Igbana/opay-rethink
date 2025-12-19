import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Container(
          margin: .fromLTRB(0, 0, 4, 25),
          padding: .all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: .circular(12),
            boxShadow: [BoxShadow(blurRadius: 16, color: Colors.grey.shade600)],
          ),
          child: CircleWidget(
            label: "Chat Support",
            color: Colors.teal,
            child: Icon(Icons.lightbulb, color: Colors.yellow),
          ),
        ),
        appBar: AppBar(toolbarHeight: 0),
        body: Column(
          crossAxisAlignment: .start,
          children: [
            TopBar(),
            Padding(
              padding: const .all(16),
              child: SizedBox(
                height: 280,
                child: Stack(
                  alignment: .bottomCenter,
                  children: [
                    Align(alignment: .topCenter, child: BalanceCard()),
                    Padding(
                      padding: .all(16),
                      child: SendBox(),
                    ),
                  ],
                ),
              ),
            ),
            BettingPayment(),
            QuickActions(),
            HotDeals(),
          ],
        ),
      ),
    );
  }
}

