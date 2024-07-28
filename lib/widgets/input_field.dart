import 'package:flutter/material.dart';
import 'package:rocket_auth/widgets/toggle_password_visibility.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final double verticalPadding;
  final double horizontalPadding;
  final double marginLeft;
  final double marginTop;
  final double marginRight;
  final double marginBottom;
  final bool alterVisibility;
  final bool hideTextInput;
  InputField(
      {super.key,
      required this.hintText,
      required this.verticalPadding,
      required this.horizontalPadding,
      required this.marginLeft,
      required this.marginRight,
      required this.marginTop,
      required this.marginBottom,
      required this.alterVisibility,
      required this.hideTextInput});
  @override
  Widget build(context) {
    return Container(
      height: 50,
      margin:
          EdgeInsets.fromLTRB(marginLeft, marginTop, marginRight, marginBottom),
      child: TextFormField(
        obscureText: hideTextInput,
        textAlign: TextAlign.left,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                vertical: verticalPadding, horizontal: horizontalPadding),
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  100.0,
                ),
              ),
            ),
            suffixIcon: alterVisibility ? TogglePasswordVisibility() : null),
      ),
    );
  }
}
