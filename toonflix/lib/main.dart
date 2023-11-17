import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/curreny_card.dart';

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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
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
                  height: 60,
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
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 34,
                  // SizedBox를 준 이유는 크기를 지정해주어야 양쪽 글자들 baseline을 맞출 수 있기 때문에
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "Wallets",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "view all",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  name: "Euro",
                  amount: "6 424",
                  code: "EUR",
                  icon: Icons.euro_rounded,
                  isInverted: false,
                  dy: 0,
                ),
                const CurrencyCard(
                  name: "Bitcoin",
                  amount: "1 557",
                  code: "BTC",
                  icon: Icons.currency_bitcoin_rounded,
                  isInverted: true,
                  dy: -20,
                ),
                const CurrencyCard(
                  name: "Dollor",
                  amount: "7 137",
                  code: "USD",
                  icon: Icons.attach_money_rounded,
                  isInverted: false,
                  dy: -40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
