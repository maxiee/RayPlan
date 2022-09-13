import 'package:flutter/material.dart';

import 'global.dart';

void main() {
  Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RayPlan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var messages = <Widget>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RayPlan"),
      ),
      body: Column(children: [
        Expanded(
          child: ListView(
            children: messages,
          ),
        ),
        Container(
          height: 100,
          color: Colors.green)
      ]),
    );
  }
}
