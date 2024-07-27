import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final double verticalPadding;
  final double horizontalPadding;
  final double marginLeft;
  final double marginTop;
  final double marginRight;
  final double marginBottom;
  InputField({
    super.key,
    required this.hintText,
    required this.verticalPadding,
    required this.horizontalPadding,
    required this.marginLeft,
    required this.marginRight,
    required this.marginTop,
    required this.marginBottom,
  }) {}

  Widget build(context) {
    return Container(
      height: 50,
      // margin: EdgeInsets.symmetric(
      //   vertical: 5,
      // ),
      margin:
          EdgeInsets.fromLTRB(marginLeft, marginTop, marginRight, marginBottom),
      child: TextFormField(
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
        ),
      ),
    );
  }
}
