import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Cashback extends StatelessWidget {
  const Cashback({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 400,
      decoration: BoxDecoration(
          color: Color(0xFF8552EA),
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
              "Cashback 2019",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            StepProgressIndicator(
              totalSteps: 100,
              currentStep: 50,
              size: 10,
              padding: 0,
              selectedColor: Color(0xFFE74678),
              unselectedColor: Color(0xFFE7E9F8),
              roundedEdges: Radius.circular(10),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "+63.98",
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  "+0.63%",
                  style: TextStyle(fontSize: 25),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cashback Balance",
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  "Cashback Rate",
                  style: TextStyle(fontSize: 15),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
