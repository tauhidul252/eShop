import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eshop/appColors/app_colors.dart';
import 'package:eshop/routes/routes.dart';
import 'package:eshop/screen/loginScreen/login_screen.dart';
import 'package:eshop/stylies/signup_screen_style.dart';
import 'package:eshop/svgImges/svg_images.dart';
import 'package:eshop/widgets/my_button_widget.dart';
import 'package:eshop/widgets/my_textfromefield_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  //get context => null;

  TextEditingController? emailController;
  TextEditingController? passwordController;
  TextEditingController? confirmPasswordController;
  TextEditingController? nameController;
  FirebaseAuth? firebaseAuth;
  FirebaseFirestore? firebase;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    nameController = TextEditingController();
    FirebaseAuth.instance;
     firebase=FirebaseFirestore.instance;
  }

  // TextEditingController?emailController;
  Widget buildTopPart() {
    return Column(
      children: [
        Image.asset(
          "images/logo.png",
          height: 150,
        ),

        MyTextFromField(
          controller: nameController,
          hintText: "Full Name",
          obscureText: false,
        ),
        MyTextFromField(
          controller: emailController,
          hintText: "Email",
          obscureText: false,
        ),
        MyTextFromField(
          controller: passwordController,
          hintText: "Password",
          obscureText: true,
        ),
        MyTextFromField(
          controller: confirmPasswordController,
          hintText: "Confirm password",
          obscureText: true,
        ),
        //Sign up button
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: MyButtonwidget(
            onPress: () async {
              await firebaseAuth!.createUserWithEmailAndPassword(
                  email: emailController!.text,
                  password: passwordController!.text);
            },
            color: AppColors.baseBlackColor,
            text: "Create An Account",
          ),
        ),
        //Login/Sign in button
        Container(
          margin: EdgeInsets.all(20),
          child: MaterialButton(
            onPressed: () {},
            color: AppColors.baseLightOrangeColor,
            height: 55,
            elevation: 0,
            child: Center(
              child: Text(
                "Sign In",
                style: SignUpScreenStylies.signUpButton,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        RichText(
          text: TextSpan(
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
              ]),
        ),
      ],
    );
  }

  Widget buildBottomPart() {
    return Container(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Or sign up with social media",
            style: SignUpScreenStylies.signUpStylies,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //Facebook login button
                buildSocialButton(
                  onPress: () {},
                  child: SvgPicture.asset(
                    SvgImages.facebook,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                ),
                //Google login button
                buildSocialButton(
                  onPress: () {},
                  child: SvgPicture.asset(
                    SvgImages.google,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                ),
                //Twitter login button
                buildSocialButton(
                  onPress: () {},
                  child: SvgPicture.asset(
                    SvgImages.twitter,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                ),

                //  Container(
                //    margin:EdgeInsets.all(20),
                //    child: MaterialButton(
                //      onPressed: () {},
                //      color: AppColors.baseLightOrangeColor,
                //      height: 55,
                //      elevation: 0,
                //      child: Center(
                //        child:Text("Sign up",
                //        style: SignUpScreenStylies.signUpButton,),
                //       ),
                //      ),
                //  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSocialButton(
      {required Widget child, required VoidCallback onPress}) {
    return MaterialButton(
        onPressed: onPress,
        shape: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.baseGrey40Color,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: child);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            buildTopPart(),
            //buildBottomPart(),
          ],
        ),
      ),
    );
  }
}
