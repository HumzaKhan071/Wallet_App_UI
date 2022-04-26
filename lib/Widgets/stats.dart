import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Stats extends StatelessWidget {
  const Stats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 400,
      decoration: BoxDecoration(
          color: Color(0xFF621CEF),
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
              "Statatistics",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("\$ 2307.45",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Today",
                        style: TextStyle(color: Colors.white, fontSize: 18))
                  ],
                ),
                StepProgressIndicator(
                  direction: Axis.vertical,
                  totalSteps: 100,
                  currentStep: 50,
                  size: 10,
                  padding: 0,
                  selectedColor: Color(0xFFE74678),
                  unselectedColor: Color(0xFFE7E9F8),
                  roundedEdges: Radius.circular(10),
                ),
                StepProgressIndicator(
                  direction: Axis.vertical,
                  totalSteps: 100,
                  currentStep: 60,
                  size: 10,
                  padding: 0,
                  selectedColor: Color(0xFFE74678),
                  unselectedColor: Color(0xFFE7E9F8),
                  roundedEdges: Radius.circular(10),
                ),
                StepProgressIndicator(
                  direction: Axis.vertical,
                  totalSteps: 100,
                  currentStep: 70,
                  size: 10,
                  padding: 0,
                  selectedColor: Color(0xFFE74678),
                  unselectedColor: Color(0xFFE7E9F8),
                  roundedEdges: Radius.circular(10),
                ),
                StepProgressIndicator(
                  direction: Axis.vertical,
                  totalSteps: 100,
                  currentStep: 80,
                  size: 10,
                  padding: 0,
                  selectedColor: Color(0xFFE74678),
                  unselectedColor: Color(0xFFE7E9F8),
                  roundedEdges: Radius.circular(10),
                ),
                StepProgressIndicator(
                  direction: Axis.vertical,
                  totalSteps: 100,
                  currentStep: 90,
                  size: 10,
                  padding: 0,
                  selectedColor: Color(0xFFE74678),
                  unselectedColor: Color(0xFFE7E9F8),
                  roundedEdges: Radius.circular(10),
                ),
                StepProgressIndicator(
                  direction: Axis.vertical,
                  totalSteps: 100,
                  currentStep: 100,
                  size: 10,
                  padding: 0,
                  selectedColor: Color(0xFFE74678),
                  unselectedColor: Color(0xFFE7E9F8),
                  roundedEdges: Radius.circular(10),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
