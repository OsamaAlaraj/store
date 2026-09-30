import 'package:flutter/material.dart';

class StoreTextField extends StatefulWidget {
  TextEditingController textFeildcontroller = TextEditingController();
  late String hintText;
  late bool isVisable;
  late Widget? icon;

  StoreTextField({
    super.key,
    required this.textFeildcontroller,
    required this.hintText,
    required this.isVisable,
    required this.icon,
  });
  @override
  State<StoreTextField> createState() => _StoreTextFieldState();
}

class _StoreTextFieldState extends State<StoreTextField> {
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







