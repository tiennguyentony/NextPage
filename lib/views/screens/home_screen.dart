import 'package:flutter/material.dart';
import 'package:nextpage/constant.dart';
import 'package:nextpage/views/widgets/custom_icon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIdx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar:  BottomNavigationBar(
            onTap:(idx) {
              setState(() {
                pageIdx = idx;
              });
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.cyan.shade700,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.white,
            unselectedLabelStyle: const TextStyle(fontFamily: 'Simplicity', fontWeight: FontWeight.bold),
            selectedLabelStyle: const TextStyle(fontFamily: 'Simplicity', fontWeight: FontWeight.bold),
            currentIndex: pageIdx,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    size: 30,
                  ),
                  label: "Home",
                
                 ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  label: "Search "),
              BottomNavigationBarItem(icon: CustomIcon(), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications, size: 30), label: "Notifications"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    size: 30,
                  ),
                  label: "Profile "),
            ],
      ),
          body: page[pageIdx]
    );
  }
}
