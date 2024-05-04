import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store/screens/home_page.dart';
import 'package:store/screens/splash_view.dart';
import 'package:store/screens/update_product_page.dart';

abstract class AppRouter
{
  static const kHomeView = '/HomeView';
  static const kUpdateProductPage = '/UpdateProductPage';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
    GoRoute(
    path: '/',
    builder: (BuildContext context, GoRouterState state) => const SplashView(),
    ),
    GoRoute(
    path: kHomeView,
    builder: (BuildContext context, GoRouterState state) => const HomePage(),

  ),
      GoRoute(
        path:kUpdateProductPage ,
        builder: (BuildContext context, GoRouterState state) => UpdateProductPage(),

      ),
    ],
  );
}