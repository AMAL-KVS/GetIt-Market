import 'package:cart/view/bottom_nav.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'more_screen.dart';
import 'notification_screen.dart';
import 'order_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List items = [
    const HomeScreen(),
    const OderScreen(),
    const NotificationScreen(),
    const MoreScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (ctx, int index, _) {
            return items[index];
          }),
      bottomNavigationBar: const BottomNavigationBarWidgets(),
    );
  }
}
