import 'package:flutter/material.dart';

class MyButtonwidget extends StatelessWidget {
final String text;
final Color color;
final Function onPress;
const MyButtonwidget({required this.text,required this.color,required this.onPress});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: MaterialButton(
        color: color,
        height: 45,
        elevation: 0,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
          ),
        onPressed:newMethod(onPress),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
           ),), 
        ),
    );
  }

   Function get newMethod => onPress;
}