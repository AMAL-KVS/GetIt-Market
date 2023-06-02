import 'package:flutter/material.dart';

class OderScreen extends StatefulWidget {
  const OderScreen({super.key});

  @override
  State<OderScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<OderScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Oder screen'),
      ),
    );
  }
}
