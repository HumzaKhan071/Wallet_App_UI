
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class card extends StatelessWidget {
  const card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 200,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Color(0xFFF0618F),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            SvgPicture.asset(
              "assets/credit-card-svgrepo-com.svg",
              height: 40,
            ),
            SizedBox(height: 100),
            Text(
              "Chase Bank",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              "\$ 1750",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 80.0),
              child: Row(
                children: [
                  Text(
                    "****",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "3456",
                    style: TextStyle(fontSize: 20, color: Colors.white),
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
