import 'package:flutter/material.dart';
import 'package:newsapp/Pages/home_screen.dart';
import 'Pages/splash_screen.dart';
import 'constant/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          splashScreenRoutes: (context) => const SplashScreen(),
          homeScreenRoutes: (context) => const HomeScreen(),
        },
        debugShowCheckedModeBanner: false,
        title: 'News App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen());
  }
}
