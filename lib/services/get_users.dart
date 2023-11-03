import 'package:http/http.dart' as http;

import '../helper/api.dart';
import '../models/users_model.dart';

class AllUsers {
  Future<List<UserModel>> getAllUsers() async {
    List<dynamic> data = await Api().get(url:"https://jsonplaceholder.typicode.com/users");

    List<UserModel> usersList = [];
    print("all user");

    for (int i = 0; i < data.length; i++) {
      usersList.add(UserModel.fromJson(data[i]));
    }
    return usersList;
  }
}
