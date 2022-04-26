import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:drop_down/Screens/bankcard.dart';

import 'package:drop_down/Widgets/cashback.dart';
import 'package:drop_down/Widgets/custom_container.dart';
import 'package:drop_down/Widgets/stats.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xFF070619),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/2542107-512.png",
                    color: Colors.white,
                    height: 30,
                  )
                ],
              ),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/IMG_0506.png")),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text(
                            "Haoran Zhang",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Image.asset(
                                "assets/4639309-512.png",
                                height: 20,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "2307.45 USD",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              DefaultTabController(
                length: 3,
                child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BubbleTabIndicator(
                    indicatorHeight: 30.0,
                    indicatorColor: Colors.white,
                    tabBarIndicatorSize: TabBarIndicatorSize.tab,
                  ),
                  tabs: [
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (contextJt) {
                              return BankCard();
                            });
                      },
                      child: Tab(
                        text: "Bank Cards",
                      ),
                    ),
                    Tab(
                      text: "Transactions",
                    ),
                    Tab(
                      text: "Fortune",
                    ),
                  ],
                ),
              ),
              CustomContainer(),
              SizedBox(height: 20),
              Cashback(),
              SizedBox(height: 20),
              Stats()
            ],
          ),
        ));
  }
}
