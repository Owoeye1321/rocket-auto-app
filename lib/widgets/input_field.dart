import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
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
  State<InputField> createState() {
    return _InputField(hintText, verticalPadding, horizontalPadding, marginLeft,
        marginTop, marginRight, marginBottom, alterVisibility, hideTextInput);
  }
}

class _InputField extends State<InputField> {
  final String hintText;
  final double verticalPadding;
  final double horizontalPadding;
  final double marginLeft;
  final double marginTop;
  final double marginRight;
  final double marginBottom;
  final bool alterVisibility;
  final bool hideTextInput;

  _InputField(
      this.hintText,
      this.verticalPadding,
      this.horizontalPadding,
      this.marginLeft,
      this.marginRight,
      this.marginTop,
      this.marginBottom,
      this.alterVisibility,
      this.hideTextInput);

  // this section does the toggle password visibility
  bool disableState = true;
  void toggleVisibility() {
    setState(() => {disableState = !disableState});
  }

  @override
  Widget build(context) {
    return Container(
      height: 50,
      margin:
          EdgeInsets.fromLTRB(marginLeft, marginTop, marginRight, marginBottom),
      child: TextFormField(
        obscureText: hideTextInput ? disableState : false,
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
            suffixIcon: alterVisibility
                ? IconButton(
                    onPressed: toggleVisibility,
                    icon: Icon(
                        disableState ? Icons.visibility : Icons.visibility_off),
                  )
                : null),
      ),
    );
  }
}
