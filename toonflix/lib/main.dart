import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter!!"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          shadowColor: Colors.red,
          elevation: 10,
        ),
        body: Center(
          child: Text(
            "Hello WORLD",
            style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
