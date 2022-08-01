import 'dart:math';

import 'package:flutter/material.dart';

void main() =>
  runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
    const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
	Color color = Colors.white;
	Color textColor = Colors.black;

  void _generateRandomColor()  {
		setState(() {
			color = Color((Random().nextInt(0xFFFFFF + 1))).withOpacity(1.0);
			textColor = color.computeLuminance() > 0.5 ? Colors.black
			                                           : Colors.white;
		});
	}
		

  @override
  Widget build(BuildContext context) =>
    Scaffold(
			backgroundColor: color,
      body: GestureDetector(
				behavior: HitTestBehavior.opaque,
				onTap: _generateRandomColor,
				child: Center(
					child: Text(
						'Hey there',
						style: TextStyle(color: textColor),
					),
				),
			),
    );
}
