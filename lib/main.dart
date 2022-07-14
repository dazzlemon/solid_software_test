import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
	Color color = Colors.white;

  void _generateRandomColor() {
		setState(() {
		  Random random = Random();
			var randomDouble = random.nextDouble();
			color = Color((randomDouble * 0xFFFFFF).toInt()).withOpacity(1.0);
		});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
			backgroundColor: color,
      body: GestureDetector(
				behavior: HitTestBehavior.opaque,
				onTap: _generateRandomColor,
				child: Center(
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center,
						children: const <Widget>[
							Text('Hey there'),
						],
					),
				),
			),
    );
  }
}
