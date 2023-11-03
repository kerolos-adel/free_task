import 'package:flutter/material.dart';

import '../models/users_model.dart';
import '../services/get_users.dart';
import '../widgets/custom_card.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Users View"),
          actions: const [Padding(padding: EdgeInsets.only(right: 10),child: Text("see all"),)],
        ),
        body: Padding(
            padding: const EdgeInsets.all(15),
            child: FutureBuilder<List<UserModel>>(
              future: AllUsers().getAllUsers(),
              builder: (context, snapshot) {
                if(snapshot.hasData){
                  print("has data");
                  List <UserModel>users = snapshot.data!;
                  return ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      return CustomCard(user: users[index],);
                    },
                  );
                }
                else{
                  print("${snapshot.error}");
                  return const Center(child: CircularProgressIndicator(),
                  );
                }
              },
            )));
  }
}

