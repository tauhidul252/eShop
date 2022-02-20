import 'package:eshop/appColors/app_colors.dart';
import 'package:eshop/widgets/my_button_widget.dart';
import 'package:eshop/widgets/my_textfromefield_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {


  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

Widget buildTopPart(){
  return Column(
    children: [
      Image.asset("images/logo.png",
      height: 150,
      ),
        Column(
          children: [
            MyTextFromField(
              hintText: "Email",
              obscureText: false,
            ),
            MyTextFromField(
              hintText: "Password",
              obscureText: true,
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: MyButtonwidget(
        
                color: AppColors.baseBlackColor,
                onPress: (){}, text: 'Login',
              ),
              ),
          ]),
        ),
    ],
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildTopPart(),
              ],
            )
          ],
          ),
        ),
        ),
    );
  }
}