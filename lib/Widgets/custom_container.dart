import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 400,
      decoration: BoxDecoration(
          color: Color(0xFF4372F0),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            bottomLeft: Radius.circular(100),
          )),
      child: Padding(
        padding: const EdgeInsets.only(left: 100.0, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Account Summary",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text("Last Statement Balance", style: TextStyle(fontSize: 18)),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "\$1678",
                  style: TextStyle(color: Color(0xFFEDB57D)),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text("Minimum Payment Due \nOn Jun 21, 2019",
                    style: TextStyle(fontSize: 18)),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "\$167.8",
                  style: TextStyle(color: Color(0xFFEDB57D)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
