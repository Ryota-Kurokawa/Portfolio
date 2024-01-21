import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/presentation/page/my_career_page.dart';
import 'package:portfolio/presentation/page/my_home_page.dart';

import 'package:portfolio/presentation/page/my_skill_page.dart';

final GoRouter myRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MyHomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'top',
          builder: (BuildContext context, GoRouterState state) {
            return const MyHomePage();
          },
        ),
        // GoRoute(
        //   path: 'my product',
        //   builder: (BuildContext context, GoRouterState state) {
        //     return const MyProductPage();
        //   },
        // ),
        GoRoute(
          path: 'career',
          builder: (BuildContext context, GoRouterState state) {
            return const MyCareerPage();
          },
        ),
        GoRoute(
          path: 'skill',
          builder: (BuildContext context, GoRouterState state) {
            return const MySkillPage();
          },
        ),
        // GoRoute(
        //     path: 'team product',
        //     builder: (BuildContext context, GoRouterState state) {
        //       return const TeamProductPage();
        //     },
        // ),
      ],
    ),
  ],
);
