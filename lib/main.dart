import 'package:flutter/material.dart';
import 'package:mentalhelthapp/pages/consultant.dart';
import 'package:mentalhelthapp/pages/home_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

int selectedIndex = 0;
List<Widget> widgetsList = [HomePage(), Consultant(), Container(), HomePage()];

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                ),
                label: ""),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_rounded),
              label: "",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.email_rounded), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "")
          ],
          onTap: (index) {
            setState(() {
              selectedIndex = index;
              print(index);
            });
          },
        ),
        body: widgetsList[selectedIndex],
      ),
    );
    // MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}
