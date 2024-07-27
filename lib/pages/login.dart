import 'package:flutter/material.dart';

import '../utilities/colors.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  child: TextFormField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 6),
                      hintText: "******@gmail.com",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            100.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 40),
                  child: TextFormField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 6),
                      hintText: "********",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            100.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
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
                    child: Text("Login"),
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
