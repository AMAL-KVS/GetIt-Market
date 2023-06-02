import 'package:flutter/material.dart';

class ProductContainerWidget extends StatelessWidget {
  String productName;
  String image;
  ProductContainerWidget(
      {super.key, required this.productName, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.black38),
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(image))),
        ),
        Text(
          productName,
          style: const TextStyle(fontWeight: FontWeight.bold),
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
