import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  TextEditingController textFeildcontroller = TextEditingController();
  late String hintText;
  late bool isVisable;
  late Widget? icon;

  CustomTextField({
    super.key,
    required this.textFeildcontroller,
    required this.hintText,
    required this.isVisable,
    required this.icon,
  });
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isVisable,
      controller: widget.textFeildcontroller,
      decoration: InputDecoration(
        suffixIcon: widget.icon,
        hintText: widget.hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}







