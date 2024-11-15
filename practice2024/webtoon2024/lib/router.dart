import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:webtoon2024/models/webtoon_model.dart';
import 'package:webtoon2024/views/detail_screen.dart';
import 'package:webtoon2024/views/home_screen.dart';

Widget fadeTransition(BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation, Widget child) =>
    FadeTransition(opacity: animation, child: child);

Widget sizeTransition(BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation, Widget child) =>
    SizeTransition(sizeFactor: animation, child: child);

Widget scaleTransition(BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation, Widget child) =>
    ScaleTransition(scale: animation, child: child);

Widget slideTransition(context, animation, secondaryAnimation, child) =>
    SlideTransition(
        position: animation.drive(
          Tween<Offset>(
            begin: const Offset(1, 0),
            end: Offset.zero,
          ).chain(CurveTween(curve: Curves.easeInOutQuart)),
        ),
        child: child);

/// The route configuration.
final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          pageBuilder: (context, state) {
            final webtoon = state.extra as WebtoonModel; // 전달된 데이터 사용
            return CustomTransitionPage<void>(
              transitionDuration: const Duration(milliseconds: 500),
              key: UniqueKey(),
              // key: state.pageKey,
              child: DetailScreen(webtoon: webtoon),
              transitionsBuilder: fadeTransition,
            );
          },
        ),
      ],
    ),
  ],
);
