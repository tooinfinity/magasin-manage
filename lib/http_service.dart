import 'dart:convert';
import 'dart:async';

import 'package:http/http.dart' as http;

import 'models/ClientModel.dart';
import 'models/User.dart';

class HttpService {
  final String clientsURL = "https://jsonplaceholder.typicode.com/posts";

  final String user = "https://reqres.in/api/users?page=1";

  Future<List<User>> getUsers() async{
    final response = await http.get(user);

    if (response.statusCode == 200) {

      Map<String, dynamic> map = json.decode(response.body);
      List<dynamic> body = map["data"];
      //List<dynamic> body = jsonDecode(response.body);

      List<User> users = body
          .map(
            (dynamic item) => User.fromJson(item),
          )
          .toList();

      return users;
    } else {
      throw "Can't get users.";
    }
  }

  Future<List<ClientModel>> getClients() async {
    final res = await http.get(clientsURL);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<ClientModel> clients = body
          .map(
            (dynamic item) => ClientModel.fromJson(item),
          )
          .toList();

      return clients;
    } else {
      throw "Can't get clients.";
    }
  }
}
