import 'package:flutter/material.dart';

class MyButtonwidget extends StatefulWidget {
final String text;
final Color color;
final VoidCallback onPress;
const MyButtonwidget({required this.text,required this.color,required this.onPress});

  @override
  State<MyButtonwidget> createState() => _MyButtonwidgetState();
}

class _MyButtonwidgetState extends State<MyButtonwidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: MaterialButton(
        color: widget.color,
        height: 45,
        elevation: 0,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
          ),
        onPressed:widget.onPress,
        child: Text(
          widget.text,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
           ),),
        ),
    );
  }
}