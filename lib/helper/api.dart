import 'dart:convert';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url),);

    if (response.statusCode == 200) {
      print("success");
      return jsonDecode(response.body);
    } else {
      print(" no success");

      throw Exception('there is a problem${response.statusCode}');
    }
  }
}
