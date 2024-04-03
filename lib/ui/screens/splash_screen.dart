import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nontonid/router/router.dart';
import 'package:nontonid/values/tema.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      context.go(RoutePaths.login);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background1,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset('assets/images/img_splash_bg.png',
                fit: BoxFit.cover),
          ),
          Positioned(
            top: 140,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/images/img_logo.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
