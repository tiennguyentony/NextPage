import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nextpage/constant.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool isObscured;
  final IconData icon;
  const TextInputField({Key? key, 
  required this.controller, 
  required this.labelText,
  this.isObscured = false,
  required this.icon, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.black,  fontFamily:'Noe',),
      controller: controller,
      decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: Icon(icon, color: Colors.cyan.shade400),
          labelStyle:  const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold, fontFamily: 'Simplicity'),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: borderColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: borderColor))),
      obscureText: isObscured,
    );
  }
}
