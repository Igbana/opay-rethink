import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'widgets/circle_widget.dart';
import 'widgets/topbar.dart';

const cl = [
  Color.fromARGB(255, 7, 43, 8),
  Color.fromARGB(255, 6, 95, 88),
  Colors.teal,
];

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
        appBar: AppBar(
          toolbarHeight: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            // statusBarIconBrightness: Brightness.dark,
            // statusBarBrightness: Brightness.light,
          ),
        ),
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
                      padding: const EdgeInsets.all(16),
                      child: SendBox(),
                    ),
                  ],
                ),
              ),
            ),
            Container(
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
            ),
            Padding(
              padding: const .all(16),
              child: Text(
                "Quick Actions",
                style: TextStyle(fontSize: 16, fontWeight: .w700),
              ),
            ),
            Padding(
              padding: const .symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  CircleWidget(label: "Airtime", child: Icon(Icons.sim_card)),
                  CircleWidget(
                    label: "Data",
                    child: Icon(Icons.wifi_tethering),
                  ),
                  CircleWidget(label: "Safebox", child: Icon(Icons.security)),
                  CircleWidget(label: "Betting", child: Icon(Icons.sim_card)),
                  CircleWidget(
                    label: "More",
                    child: Icon(Icons.grid_view_rounded),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const .all(16),
              child: Stack(
                alignment: .centerLeft,
                children: [
                  for (int i = 0; i < 3; i++)
                    AnimatedContainer(
                      padding: .all((15 + (i).toDouble())),
                      duration: Durations.medium4,
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
