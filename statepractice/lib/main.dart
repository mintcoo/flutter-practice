import 'package:flutter/material.dart';
import 'package:statepractice/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Color(0xFF232B55),
          ),
        ),
        cardColor: const Color(0xFFF4EDDB),
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: const Color(0xFFE7626C),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   bool showTitle = true;

//   void onClickShow() {
//     setState(() {
//       showTitle = !showTitle;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         textTheme: const TextTheme(
//           titleLarge: TextStyle(
//             color: Colors.red,
//           ),
//         ),
//       ),
//       home: Scaffold(
//         backgroundColor: const Color.fromARGB(255, 243, 203, 188),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               showTitle ? const MyLargeTitle() : const Text("???"),
//               IconButton(
//                   onPressed: onClickShow,
//                   icon: const Icon(Icons.remove_red_eye)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyLargeTitle extends StatefulWidget {
//   const MyLargeTitle({
//     super.key,
//   });

//   @override
//   State<MyLargeTitle> createState() => _MyLargeTitleState();
// }

// class _MyLargeTitleState extends State<MyLargeTitle> {
//   @override
//   void initState() {
//     super.initState();
//     print("처음 생성할때 build 전");
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     print("위젯 사라질때");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       "My Large Title",
//       style: TextStyle(
//         fontSize: 22,
//         color: Theme.of(context).textTheme.titleLarge?.color,
//       ),
//     );
//   }
// }
// 여기까지 statePractice 연습한것
