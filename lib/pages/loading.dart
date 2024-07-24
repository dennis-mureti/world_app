import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async {
    Response response =
        await get(Uri.parse("https://jsonplaceholder.typicode.com/todos/1"));
    Map data = jsonDecode(response.body);

    print(data);
    print(data['title']);
    // final Uri url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
    // get(url);
    // Map data = jsonDecode(url);
    // // to simulate a network request for a user name
    // String username = await Future.delayed(const Duration(seconds: 3), () {
    //   return 'Dennis';
    // });

    // String bio = await Future.delayed(const Duration(seconds: 2), () {
    //   return 'Developer, musician and chicken keeper';
    // });

    // print('$username - $bio');
  }

  // int counter = 0;
  @override
  void initState() {
    super.initState();
    getData();
    print('hey there');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Screen'),
    );
  }
}
