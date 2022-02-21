import 'package:eshop/appColors/app_colors.dart';
import 'package:eshop/stylies/signup_screen_style.dart';
import 'package:eshop/widgets/my_button_widget.dart';
import 'package:eshop/widgets/my_textfromefield_widget.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {

  Widget buildTopPart(){
    return Column(
      children: [
        Image.asset("images/logo.png",
        height: 150,
        ),
        MyTextFromField(
          hintText: "Full Name",
              obscureText: false,
        ),
        MyTextFromField(
          hintText: "Email",
              obscureText: false,
        ),
        MyTextFromField(
          hintText: "Password",
              obscureText: true,
        ),
        MyTextFromField(
          hintText: "Confirm password",
              obscureText: true,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: MyButtonwidget( 
            onPress: () { },
            color: AppColors.baseBlackColor,
            text: "Create An Account",
          ),
        ),
        SizedBox(height: 20,),
        RichText(text: TextSpan(
          text: "By signing up you agree to our\n\t",
          style: SignUpScreenStylies.signInAgressStylies,
          children: <TextSpan>[
            TextSpan(
              text: "Terms\t",
              style: SignUpScreenStylies.tremsAgressStylies,
            ),
            TextSpan(
              text: "and\t",
              style: SignUpScreenStylies.andTextStylies,
            ),
            TextSpan(
              text: "Condition Of Use",
              style: SignUpScreenStylies.conditionOfUseStylies,
            ),
          ]
        ),
        ),
      ],
    );
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: ListView(
        physics: BouncingScrollPhysics(),
      children: [
        buildTopPart(),
      ],
      ),
      ),
      
    );
  }
}