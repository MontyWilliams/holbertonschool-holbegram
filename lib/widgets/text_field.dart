import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
 
 class TextFieldInput extends StatelessWidget {
  final TextEditingController controller;
  final bool isPassword;
  final String hintText;
  final Widget? suffixIcon;
  final TextInputType keyboardType;

  TextFieldInput({
    required this.controller,
    this.isPassword = false,
    required this.hintText,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
  });

  @override

  Widget build(BuildContext context) {
    return Material(
        child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: TextField(
      keyboardType: keyboardType,
      controller: controller,
      cursorColor: Color.fromARGB(218, 226, 37, 24),
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(10.0),
        ),
        filled: true,
        contentPadding: EdgeInsets.all(8.0),
        suffixIcon: suffixIcon,
      ),
      textInputAction: TextInputAction.next,
      obscureText: isPassword,
    ),
    ),
      );
      
  }
}