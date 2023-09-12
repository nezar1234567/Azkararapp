import 'package:azkar2_app/screens/app_screen.dart';
import 'package:azkar2_app/screens/bn_screen.dart';
import 'package:azkar2_app/screens/launch_screen.dart';
import 'package:azkar2_app/screens/login_screen.dart';
import 'package:azkar2_app/screens/products_screen.dart';
import 'package:azkar2_app/screens/users_screen.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      routes: {
        "/launch_screen" : (context) => const LaunchScreen() ,
        "/app_screen" : (context) => const AppScreen() ,
        "/users_screen" : (context) => const UsersScreen() ,
        "/product_screen" : (context) => const ProductScreen(),
        "/home_screen" : (context) => const HomeScreen(),
        "/login_screen" : (context) => const LoginScreen(),
        "/bn_screen" : (context) => const BnScreen(),
      },

    );
  }
}
