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
  List<int> countList = [];

  void onClick() {
    setState(() {
      counter += 1;
      countList.add(counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            textTheme: const TextTheme(
                titleLarge: TextStyle(
          color: Colors.red,
        ))),
        title: 'Flutter Demo',
        home: Scaffold(
          backgroundColor: Colors.amber[50],
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyLargeTitle(
                  name: "My Large Title!!",
                  onTap: (bool value) {
                    print("콜백되엇음");
                  },
                ),
              ],
            ),
          ),
        ));
  }
}

class MyLargeTitle extends StatefulWidget {
  final String? name;
  final Function(bool) onTap;
  const MyLargeTitle({super.key, this.name, required this.onTap});

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap(true);
      },
      child: Text(
        widget.name ?? "null",
        style: TextStyle(
            fontSize: 30, color: Theme.of(context).textTheme.titleLarge?.color),
      ),
    );
  }
}
