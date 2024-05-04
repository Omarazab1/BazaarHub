import 'package:flutter/material.dart';
import 'package:store/widgets/splash_view_body.dart';



class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static String id = 'splash view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SplashViewBody(),
    );
  }
}
