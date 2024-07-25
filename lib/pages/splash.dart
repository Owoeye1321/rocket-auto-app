import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text("hello"),
            ),
            Container(
              height: 600,
              child: Image.asset("assets/splash.svg"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("hello"),
            )
          ],
        ),
      ),
    );
  }
}
