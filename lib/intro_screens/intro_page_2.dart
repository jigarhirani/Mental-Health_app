import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("A Consultant.. You Get Along With",
                style: TextStyle(
                    fontSize: 21,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 80,
            ),
            Lottie.asset('assets/animations/consultant.json'),
            SizedBox(
              height: 95,
            ),
          ],
        ),
        // child: Text("Yooooooo WASSUP"),
      ),
    );
  }
}
