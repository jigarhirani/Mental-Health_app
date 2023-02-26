import 'package:flutter/material.dart';
import 'package:mentalhealthapp/pages/consultant.dart';
import 'package:mentalhealthapp/pages/home_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

List<Widget> widgetsList = [HomePage(), Consultant(), Container(), HomePage()];
int selectedIndex = 0;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled,
                  color: selectedIndex == 0 ? Colors.blue : Colors.grey),
              label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_rounded,
                color: selectedIndex == 1 ? Colors.blue : Colors.grey),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.email_rounded,
                  color: selectedIndex == 2 ? Colors.blue : Colors.grey),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,
                  color: selectedIndex == 3 ? Colors.blue : Colors.grey),
              label: "")
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
            // print(index);
          });
        },
      ),
      body: widgetsList[selectedIndex],
    );
  }
}
