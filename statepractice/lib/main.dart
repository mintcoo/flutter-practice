import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  void onClick() {
    setState(() {
      counter = counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 243, 203, 188),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Click Counter",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              Text(
                '$counter',
                style: const TextStyle(
                  fontSize: 22,
                ),
              ),
              IconButton(
                iconSize: 40,
                onPressed: onClick,
                icon: const Icon(
                  Icons.add_box_outlined,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
