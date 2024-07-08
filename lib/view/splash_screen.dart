import 'package:flutter/material.dart';
import 'package:lite_shopper/view/product_showcase_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: Future.delayed(
            const Duration(seconds: 3),
            () => Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const ProductShowcaseScreen(),
              ),
              (route) => false,
            ),
          ),
          builder: (context, snapshot) {
            return const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.light_mode_outlined,
                      size: 100,
                    ),
                     SizedBox(
                      height: 10,
                      width: double.infinity,
                    ),
                    Text(
                      'Lite Shop',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                CircularProgressIndicator(),
              ],
            );
          }),
    );
  }
}
