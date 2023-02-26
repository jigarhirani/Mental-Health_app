import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Let's Find You a Consultant...",
                style: TextStyle(
                    fontSize: 21,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 60,
            ),
            Lottie.asset('assets/animations/searching.json'),
            SizedBox(
              height: 90,
            ),
          ],
        ),
        // child: Text("Yooooooo WASSUP"),
      ),
    );
  }
}
