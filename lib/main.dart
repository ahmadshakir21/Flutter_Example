import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            margin: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              border: Border.all(width: 8),
              borderRadius:
                  const BorderRadius.only(topLeft: Radius.circular(108)),
            ),
            child: ClipRRect(
                borderRadius:
                    const BorderRadius.only(topLeft: Radius.circular(100)),
                child: Image.network(
                  "https://standingtech.com/wp-content/uploads/2016/12/kurdishflag-1024x683.png",
                  fit: BoxFit.fill,
                )),
            height: 300,
            width: 400,
          ),
          const SizedBox(height: 50),
          const Text(
            "\u{1F349}This is Flag",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w500,
              color: Colors.indigo,
              fontFamily: "Anton",
            ),
          ),
        ]),
      ),
    );
  }
}
