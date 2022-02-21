import 'package:eshop/appColors/app_colors.dart';
import 'package:eshop/stylies/login_screen_stylies.dart';
import 'package:eshop/svgImges/svg_images.dart';
import 'package:eshop/widgets/my_button_widget.dart';
import 'package:eshop/widgets/my_textfromefield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                onPress: (){}, text: 'Sign In ',
              ),
              ),
              SizedBox(width: 20,),
              Expanded(child: MyButtonwidget(
        
                color: AppColors.baseBlackColor,
                onPress: (){}, text: 'Sign Up',
              ),
              ),
          ]),
        ),
        SizedBox(height: 20,),
        Text("Reset Your Password",style: LoginScreenStylies.resetPasswordStylies,)
    ],
  );
}
Widget buildBottomPart(){
  return Container(
    height: 300,
    child: Column(mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text("OR Sign In With Social Network",
      style: LoginScreenStylies.signInSocialStylies,
      ),
      SizedBox(height: 5,),
      Padding(padding: EdgeInsets.all(20.0),
      child: Row(
        children: [
          //Facebook Social login button.
          MaterialButton(
            shape: OutlineInputBorder(
              borderSide: BorderSide(
               width: 0.5,
               color: AppColors.baseBlackColor 
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            onPressed: (){},
            child: SvgPicture.asset(
              SvgImages.facebook,
              color: AppColors.baseBlackColor,
              width: 45,
            ),
          ),
          //Google Social login button.
          MaterialButton(
            shape: OutlineInputBorder(
              borderSide: BorderSide(
               width: 0.5,
               color: AppColors.baseBlackColor 
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            onPressed: (){},
            child: SvgPicture.asset(
              SvgImages.google,
              color: AppColors.baseBlackColor,
              width: 45,
            ),
          ),
          
          //Twiter Social login button.
          MaterialButton(
            shape: OutlineInputBorder(
              borderSide: BorderSide(
               width: 0.5,
               color: AppColors.baseBlackColor 
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            onPressed: (){},
            child: SvgPicture.asset(
              SvgImages.twitter,
              color: AppColors.baseBlackColor,
              width: 45,
            ),
          ),
        ],
      ),)
  
    ],),
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
                buildBottomPart(),
              ],
            )
          ],
          ),
        ),
        ),
    );
  }
}