import 'package:eshop/screen/loginScreen/login_screen.dart';
import 'package:eshop/screen/signUp/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:eshop/widgets/my_textfromefield_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eShop',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            
          )
        ),
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}

