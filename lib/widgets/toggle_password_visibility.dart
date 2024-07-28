import "package:flutter/material.dart";

class TogglePasswordVisibility extends StatefulWidget {
  TogglePasswordVisibility({super.key});
  @override
  State<TogglePasswordVisibility> createState() {
    return _TogglePasswordVisibility();
  }
}

bool currentState = true;

class _TogglePasswordVisibility extends State<TogglePasswordVisibility> {
  void toggleVisibility() {
    setState(() => {currentState = !currentState});
  }

  @override
  Widget build(context) {
    return IconButton(
        onPressed: toggleVisibility,
        icon: Icon(currentState ? Icons.visibility : Icons.visibility_off));
  }
}
