import 'dart:convert';

import 'package:http/http.dart' as myHTTP;

import 'models/todo_model.dart';
import 'models/user_model.dart';

Future<void> main() async {
  String baseUrl = "https://64c9fb25b2980cec85c2ab7a.mockapi.io";

  Uri uriForTodos = Uri.parse("$baseUrl/todos");
  Uri uriForUsers = Uri.parse("$baseUrl/Users");

  myHTTP.Response responseOfTodos = await myHTTP.get(uriForTodos);
  myHTTP.Response responseOfUsers = await myHTTP.get(uriForUsers);

  List<TodoModel> todos = List<Map<String, Object?>>.from(
    jsonDecode(responseOfTodos.body),
  ).map(TodoModel.fromJson).toList();

  List<User> users = List<Map<String, Object?>>.from(
    jsonDecode(responseOfUsers.body),
  ).map(User.fromJson).toList();

  print(todos[0].account_name);
  print(users[0].married);
}
