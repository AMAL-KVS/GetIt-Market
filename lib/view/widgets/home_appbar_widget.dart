import 'package:flutter/material.dart';

import '../../constants/contants.dart';

class AppBarWidet extends StatelessWidget {
  const AppBarWidet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 75,
      child: Row(
        children: [
          SizedBox(
            height: 90,
            child: Image.asset(
              'assets/WhatsApp Image 2023-06-01 at 20.57.42.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Spacer(),
          Icon(
            Icons.qr_code_scanner,
            color: kgreencolor,
            size: 30,
          ),
          kwidth20,
          Icon(
            Icons.shopping_cart_outlined,
            size: 30,
            color: kgreencolor,
          ),
          kwidth20
        ],
      ),
    );
  }
}
