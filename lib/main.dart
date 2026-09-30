import 'package:flutter/material.dart';
import 'package:testone/screens/cart.dart';
import 'package:testone/screens/detalis.dart';
import 'package:testone/screens/home.dart';
import 'package:testone/screens/login.dart';
import 'package:testone/screens/register.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        '/login_screen': (context) => LoginPage(),
        '/register_screen': (context) => RegisterPage(),
        '/home_screen': (context) => HomePage(),
        '/details_screen': (context) => DetalisPage(),
        '/cart' : (context) => Cart(),
      },
      initialRoute: '/login_screen',
      //home: Test(),
    );
  }
}
