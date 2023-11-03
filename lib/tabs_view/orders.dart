import 'package:flutter/material.dart';

class Orders extends StatelessWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            "assets/images/EmptyState.png",
          ),
          const Text(
            "No Order found",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          ),
          const Text(
            "you can place your needed orders.\n to let serve you",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
