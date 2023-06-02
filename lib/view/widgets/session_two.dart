import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'product_container_widget.dart';

class SessionTwo extends StatelessWidget {
  String title;
  SessionTwo({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      const Spacer(),
      TextButton(
          onPressed: () {},
          child: Row(children: const [
            Text('View All', style: TextStyle(color: Colors.orange)),
            Icon(Icons.arrow_forward, color: Colors.orange)
          ]))
    ]);
  }
}

class SessionThree extends StatelessWidget {
  const SessionThree({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var snap;
    return Expanded(
      child: StreamBuilder(
          stream:
              FirebaseFirestore.instance.collection('categories').snapshots(),
          builder: (context,
              AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              log('snapshot waiting');
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              log('snapshot error');
              return const Center(child: CircularProgressIndicator());
            }

            return GridView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: snapshot.data!.docs.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.72,
                  crossAxisCount: 4,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 1.0,
                ),
                itemBuilder: (ctx, index) {
                  snap = snapshot.data!.docs[index].data();
                  return ProductContainerWidget(
                    image: snap['image'].toString(),
                    productName: '${snap['productName']}',
                  );
                });
          }),
    );
  }
}
