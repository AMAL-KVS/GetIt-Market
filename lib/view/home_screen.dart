import 'package:cart/constants/contants.dart';
import 'package:cart/view/widgets/session_two.dart';
import 'package:flutter/material.dart';
import 'widgets/home_appbar_widget.dart';
import 'widgets/session_four.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: const PreferredSize(
              preferredSize: Size.fromHeight(100), child: AppBarWidet()),
          body: Column(children: [
            textFeild(),
            Container(
                color: kgreencolor,
                width: double.infinity,
                height: 200,
                child: Image.asset('assets/FRIDGE-RAIDERS-AMP-PACK-RENDER.jpg',
                    fit: BoxFit.cover)),
            SessionTwo(title: 'Categories'),
            const SessionThree(),
            SessionTwo(title: 'Brands'),
            const SessionFour()
          ])),
    );
  }
}

Widget textFeild() {
  return Padding(
    padding: const EdgeInsets.only(left: 25, right: 25),
    child: TextField(
      decoration: InputDecoration(
          hintText: 'Search Product...',
          border: const OutlineInputBorder(),
          suffixIcon: Container(
            //margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: kgreencolor,
            ),
            width: 25,
            height: 15,
            child: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          )),
    ),
  );
}
