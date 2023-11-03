import 'package:flutter/material.dart';

import '../models/users_model.dart';

class CustomCard extends StatelessWidget {
  CustomCard({Key? key, required this.user}) : super(key: key);

  UserModel user;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [

          Text(
            "${user.id.toString()}.",
            style: const TextStyle(fontSize: 24),
          ),
          const Spacer(
            flex: 1,
          ),
          Text(
            user.name,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const Spacer(
            flex: 6,
          ),
        ],
      )
    ]);
  }
}
