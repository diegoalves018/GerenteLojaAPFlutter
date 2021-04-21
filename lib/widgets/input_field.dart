import 'package:flutter/material.dart';

class InputField extends StatelessWidget {

  final IconData icon;
  final String hint;
  final bool obscure;

  InputField({this.icon, this.hint, this.obscure});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        icon: Icon(icon, color: Colors.white),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.pink)
        ),
        contentPadding: EdgeInsets.only(
          left: 5.0,
          right: 30.0,
          top: 30,
          bottom: 30
        )
      ),
      style: TextStyle(color: Colors.white),
      obscureText: obscure,
    );
  }
}
