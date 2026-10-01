import 'package:flutter/material.dart';
import 'package:testone/screens/account_screen.dart';
import 'package:testone/screens/cart_screen.dart';
import 'package:testone/screens/details_screen.dart';
import 'package:testone/screens/home_screen.dart';
import 'package:testone/screens/login_screen.dart';
import 'package:testone/screens/register_screen.dart';

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
        '/login_screen': (context) => LoginScreen(),
        '/register_screen': (context) => RegisterScreen(),
        '/home_screen': (context) => HomeScreen(),
        '/details_screen': (context) => DetailsScreen(),
        '/cart' : (context) => CartScreen(),
        '/account_screen': (context) => AccountScreen(),
      },
      initialRoute: '/login_screen',
      //home: Test(),
    );
  }
}
