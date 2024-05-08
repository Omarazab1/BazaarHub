import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:store/constants.dart';
import 'package:store/screens/home_page.dart';
import 'package:store/screens/splash_view.dart';
import 'package:store/screens/update_product_page.dart';
import 'package:store/services/update_product.dart';
import 'package:store/utils/App_router.dart';

void main() {
  runApp(const BazaarHub());
}

class BazaarHub extends StatelessWidget {
  const BazaarHub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id: (context) => HomePage(),
        UpdateProductPage.id: (context) => UpdateProductPage(),
      },
      home: const SplashView(),
    );
  }
}
