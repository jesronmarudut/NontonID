import 'package:flutter/material.dart';
import 'package:nontonid/router/router.dart';
import 'package:nontonid/values/tema.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: const TextTheme(),
        brightness: Brightness.dark,
        primaryColor: background2,
        splashColor: Colors.transparent, //Off button effect animation
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: background2,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: yellowColor,
          unselectedItemColor: whiteColor,
        ),
      ),
      // routerConfig: RouterConfig(),
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
