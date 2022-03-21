import 'package:flutter/material.dart';
import 'package:travel_app/navPages/home_page.dart';
import 'bar_item.dart';
import 'my_page.dart';
import 'search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [HomePage(), BarItem(), SearchPage(), MyPage()];

  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          unselectedFontSize: 0,
          selectedFontSize: 0,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.apps)),
            BottomNavigationBarItem(
                label: "Home", icon: Icon(Icons.bar_chart_sharp)),
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.search)),
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.person)),
          ]),
    );
  }
}
