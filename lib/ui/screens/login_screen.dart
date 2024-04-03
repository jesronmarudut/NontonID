import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nontonid/router/router.dart';
import 'package:nontonid/values/tema.dart';

import '../widgets/primary_button_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreentate();
}

class _LoginScreentate extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background1,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          bottom: 16,
          left: 16,
          right: 16,
        ),
        child: PrimaryButtonWidget(
          onTap: () {
            context.go(RoutePaths.home);
          },
          text: 'Masuk',
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 140),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/img_logo.png',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 95),
              Text('Masuk',
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: black,
                  )),
              const SizedBox(height: 32),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle: TextStyle(
                      color: whiteColor.withOpacity(0.2),
                    ),
                    prefixIcon: const Icon(Icons.person_outline_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                    fillColor: background2,
                    filled: true),
                style: whiteTextStyle,
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: whiteColor.withOpacity(0.2),
                    ),
                    prefixIcon: const Icon(Icons.lock_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                    fillColor: background2,
                    filled: true),
                obscureText: true,
                style: whiteTextStyle,
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Text(
                    'Belum punya akun?',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: light,
                      color: whiteColor.withOpacity(0.6),
                    ),
                  ),
                  const Opacity(opacity: 0.9),
                  const SizedBox(width: 4),
                  InkWell(
                    onTap: () {
                      context.go(RoutePaths.register);
                    },
                    child: Text('Daftar',
                        style: whiteTextStyle.copyWith(
                          fontSize: 17,
                          fontWeight: black,
                        )),
                  ),
                ],
              ),
              const SizedBox(height: 150),
            ],
          ),
        ),
      ),
    );
  }
}
