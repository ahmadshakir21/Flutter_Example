import 'dart:io';

import 'package:flutter/material.dart';

void main(){
  test();
  runApp(const MyApp());
}

void test(){
  print("task 1");
  Duration wait3sec = Duration(milliseconds: 1);
  Future.delayed(wait3sec,(){
    print('Future delayed executes after 1 seconds ');
  });
  print("object");
  print("task 3");
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Appbar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: const Color.fromARGB(255, 29, 10, 66),
      ),
      body: const Center(
        child: Text(
          "Flutter Application",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 29, 10, 66)),
        ),
      ),
    );
  }
}
