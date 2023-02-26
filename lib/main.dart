import 'package:flutter/material.dart';
import 'package:mentalhealthapp/pages/consultant.dart';
import 'package:mentalhealthapp/pages/home_page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mentalhealthapp/pages/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // int selectedIndex = 0;
  // List<Widget> widgetsList = [
  //   HomePage(),
  //   Consultant(),
  //   Container(),
  //   HomePage()
  // ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // bottomNavigationBar: BottomNavigationBar(
        //   type: BottomNavigationBarType.fixed,
        //   selectedItemColor: Colors.blue,
        //   items: [
        //     BottomNavigationBarItem(
        //         icon: Icon(Icons.home_filled,
        //             color: selectedIndex == 0 ? Colors.blue : Colors.grey),
        //         label: ""),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.grid_view_rounded,
        //           color: selectedIndex == 1 ? Colors.blue : Colors.grey),
        //       label: "",
        //     ),
        //     BottomNavigationBarItem(
        //         icon: Icon(Icons.email_rounded,
        //             color: selectedIndex == 2 ? Colors.blue : Colors.grey),
        //         label: ""),
        //     BottomNavigationBarItem(
        //         icon: Icon(Icons.person,
        //             color: selectedIndex == 3 ? Colors.blue : Colors.grey),
        //         label: "")
        //   ],
        //   onTap: (index) {
        //     setState(() {
        //       selectedIndex = index;
        //       // print(index);
        //     });
        //   },
        // ),
        // body: widgetsList[selectedIndex],
        body: OnBoardingScreen(),
      ),
    );
    // MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}
