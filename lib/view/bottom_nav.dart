import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationBarWidgets extends StatelessWidget {
  const BottomNavigationBarWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int newIndex, _) {
          return BottomNavigationBar(
              //selectedLabelStyle: TextStyle(color: Colors.black38),
              // unselectedLabelStyle: TextStyle(color: Colors.black38),
              showUnselectedLabels: true,
              iconSize: 30,
              selectedItemColor: Colors.green,
              unselectedItemColor: Colors.black38,
              currentIndex: newIndex,
              //type: BottomNavigationBarType.fixed,
              onTap: (index) {
                indexChangeNotifier.value = index;
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.assignment_add), label: 'Oders'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notifications), label: 'Notifications'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.more_horiz_sharp), label: 'More'),
                //BottomNavigationBarItem(icon: Icon(Icons.notifications), label: '')
              ]);
        });
  }
}
