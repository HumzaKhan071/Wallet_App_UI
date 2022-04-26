import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Widgets/card.dart';

class BankCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.8,
      decoration: BoxDecoration(
          color: Color(0xFFE7E9F8),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          )),
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Cards",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 30),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [card(), SizedBox(width: 20), card()],
                )),
            SizedBox(height: 60),
            Text(
              "Your Bank",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/card-svgrepo-com.svg",
                  height: 50,
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    Text(
                      "Chase Bank",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text("1 (800) 935-9935")
                  ],
                )
              ],
            ),
            SizedBox(height: 60),
            Text(
              "Add New",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
