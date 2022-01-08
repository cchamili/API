import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostState with ChangeNotifier {
  void load() async {
    var url =
        Uri.parse('https://jsonplaceholder.typicode.com/posts/20/comments');
    var response = await http.get(url);
    var data = jsonDecode(response.body);
    //print(response.body);
    print(data);
  }
}
