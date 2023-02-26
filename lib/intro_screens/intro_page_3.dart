import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("A Journey to Happiness..",
                style: TextStyle(
                    fontSize: 21,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 60,
            ),
            Lottie.asset('assets/animations/journey.json'),
            SizedBox(
              height: 70,
            ),
          ],
        ),
        // child: Text("Yooooooo WASSUP"),
      ),
    );
  }
}
