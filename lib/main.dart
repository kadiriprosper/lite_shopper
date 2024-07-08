import 'package:flutter/material.dart';
import 'package:lite_shopper/view/product_showcase_screen.dart';
import 'package:lite_shopper/view/splash_screen.dart';

void main() async {  
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}
