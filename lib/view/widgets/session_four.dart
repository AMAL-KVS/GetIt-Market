import 'package:flutter/material.dart';

import 'product_container_widget.dart';

class SessionFour extends StatelessWidget {
  const SessionFour({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'https://5.imimg.com/data5/SELLER/Default/2021/3/KO/QG/XG/3922575/all-grocery-items-500x500.jpg',
      'https://5.imimg.com/data5/SELLER/Default/2021/1/UJ/LP/RK/121358408/91oiqlyss4l-sl1500--250x250.jpg',
      'https://5.imimg.com/data5/SELLER/Default/2020/11/ZX/IQ/SA/748760/500gms-jyoti-pure-indian-tea-250x250.jpg',
      'https://5.imimg.com/data5/SELLER/Default/2020/10/FX/PO/CY/34810136/household-products-distributorship-250x250.jpeg',
      'https://5.imimg.com/data5/SELLER/Default/2020/11/ZX/IQ/SA/748760/500gms-jyoti-pure-indian-tea-250x250.jpg',
    ];
    final List<String> itemsName = [
      'Combo offer',
      'Mytha Powder',
      'Farmily kit',
      'JOR',
      'Family KIt'
    ];

    return Expanded(
        child: ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (ctx, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ProductContainerWidget(
                  productName: itemsName[index],
                  image: items[index],
                ),
              );
            }));
  }
}
