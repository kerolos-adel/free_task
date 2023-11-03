import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Categories View"),
          actions: const [Padding(padding: EdgeInsets.only(right: 10),child: Text("see all"),)],
        ),
        body: Column(
          children: [
            categoriesView(image: "assets/images/1.png", text: "Constructions"),
            categoriesView(image: "assets/images/3.png", text: "Insurances"),
            categoriesView(image: "assets/images/2.png", text: "Legal"),
            categoriesView(image: "assets/images/4.png", text: "Buy & Sell"),
            categoriesView(image: "assets/images/5.png", text: "Accounting Services"),

          ],
        ));
  }
}

categoriesView({required String image, required String text}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: Row(
      children: [
        Image.asset(
          image,
        ),
        const Spacer(
          flex: 1,
        ),
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
        ),
        const Spacer(
          flex: 20,
        ),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_forward_sharp))
      ],
    ),
  );
}
