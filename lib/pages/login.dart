import 'package:flutter/material.dart';
import 'package:rocket_auth/widgets/input_field.dart';

import '../utilities/colors.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool show_password = true;

  togglePasswordVisibility() {
    setState(() {
      show_password = !show_password;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Form(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 50,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InputField(
                    hintText: "**********@gmail.com",
                    verticalPadding: 10,
                    horizontalPadding: 16,
                    marginLeft: 0,
                    marginRight: 0,
                    marginTop: 5,
                    marginBottom: 5),
                InputField(
                    hintText: "********",
                    verticalPadding: 10,
                    horizontalPadding: 15,
                    marginBottom: 40,
                    marginLeft: 0,
                    marginRight: 0,
                    marginTop: 10),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: rootPink,
                      minimumSize: Size(325, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 19),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
