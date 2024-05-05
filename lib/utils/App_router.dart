import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store/screens/overview_page.dart';
import 'package:store/screens/profile_page.dart';

abstract class AppRouter
{

  static const kProfilePage = '/ProfilePage';
  static const kOverView = '/OverView';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: kProfilePage,
        builder: (BuildContext context, GoRouterState state)=>  ProfilePage(),
      ),
    ],
  );
}


