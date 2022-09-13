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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RayPlan"),
      ),
      body: Column(children: [
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Consumer<ServiceMessages>(
                builder: (context, value, child) => ListView.builder(
                      itemBuilder: (context, index) => value.imMessages[index],
                      itemCount: value.imMessages.length,
                    )),
          ),
        ),
        CompInput()
      ]),
    );
  }
}
