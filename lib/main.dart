import 'package:flutter/material.dart';
import 'package:store/constants.dart';
import 'package:store/screens/home_page.dart';
import 'package:store/screens/splash_view.dart';
import 'package:store/screens/update_product_page.dart';

void main() {
  runApp(const BazaarHub());
}

class BazaarHub extends StatelessWidget {
  const BazaarHub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: bgColor,
            foregroundColor: Colors.black,
            elevation: 0),
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black),
          bodyMedium: TextStyle(color: Colors.black),
          bodySmall: TextStyle(color: Colors.black),
          headlineLarge: TextStyle(color: Colors.black),
          headlineMedium: TextStyle(color: Colors.black),
          headlineSmall: TextStyle(color: Colors.black),
          titleLarge: TextStyle(color: Colors.black),
          titleMedium: TextStyle(color: Colors.black),
          titleSmall: TextStyle(color: Colors.black),
        ),
        elevatedButtonTheme: const ElevatedButtonThemeData(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(primaryColor))),
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.red, // Set the button color here
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      routes: {
        HomePage.id: (context) => HomePage(),
        UpdateProductPage.id: (context) => UpdateProductPage(),
      },
      home: const SplashView(),
    );
  }
}
