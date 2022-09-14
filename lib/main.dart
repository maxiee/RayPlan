import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ray_plan/comp/comp_input.dart';
import 'package:ray_plan/service/service_im.dart';

import 'global.dart';

void main() {
  Global.init();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider.value(value: Global.serviceMessages),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RayPlan',
      debugShowCheckedModeBanner: false,
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
  ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RayPlan"),
        actions: [
          Center(
              child: Text(
            "GitHub star maxiee/RayPlan  ",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.yellow),
          ))
        ],
      ),
      body: Column(children: [
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Consumer<ServiceMessages>(builder: (context, value, child) {
              Future(() => _scrollController.animateTo(
                  _scrollController.position.maxScrollExtent,
                  duration: Duration(milliseconds: 200),
                  curve: Curves.easeOut));
              return ListView.builder(
                controller: _scrollController,
                itemBuilder: (context, index) => value.imMessages[index],
                itemCount: value.imMessages.length,
              );
            }),
          ),
        ),
        CompInput()
      ]),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
}
