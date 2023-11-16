import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text("Hey, Cinna",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                            )),
                        Text("Welcome Back",
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 15,
                            )),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Text(
                  "Total Balance",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "\$7 747 777",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 46,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      text: "transfer",
                      textColor: Colors.black,
                      bgColor: Color(0XFFF1B33B),
                    ),
                    Button(
                      text: "request",
                      textColor: Colors.white,
                      bgColor: Color(0xFF1F2123),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
