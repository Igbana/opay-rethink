import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'widgets/circle_widget.dart';
import 'widgets/topbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            // statusBarIconBrightness: Brightness.dark,
            // statusBarBrightness: Brightness.light,
          ),
        ),
        body: Column(
          children: [
            TopBar(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                height: 280,
                child: Stack(
                  alignment: AlignmentGeometry.bottomCenter,
                  children: [
                    Align(
                      alignment: AlignmentGeometry.topCenter,
                      child: BalanceCard(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: SendBox(),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  focal: Alignment.bottomCenter,
                  radius: 2,
                  colors: [Colors.orange.shade50, Colors.white, Colors.white],
                ),
                border: BoxBorder.symmetric(
                  horizontal: BorderSide(color: Colors.grey),
                ),
              ),
              height: 100,
              child: Row(
                children: [
                  Container(
                    height: 64,
                    width: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: .start,
                    children: [
                      Text("Betting Payment"),
                      Text(
                        "Fund betting account with #100 or more to get up to #100 cashback",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 1, 51, 43),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Align(
        alignment: Alignment.topCenter,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  spacing: 8,
                  children: [
                    Text(
                      "#12,890.50",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.tealAccent[700],
                      child: Icon(CupertinoIcons.eye_slash),
                    ),
                  ],
                ),
                Text(
                  "+18% from last week",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Spacer(),
            GestureDetector(
              child: Row(
                spacing: 4,
                children: [
                  Text(
                    "History",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 14, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
