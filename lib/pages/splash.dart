import 'package:flutter/material.dart';
import 'package:rocket_auth/pages/login.dart';
import 'package:rocket_auth/utilities/colors.dart';

import 'expenses.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 180),
              height: 360,
              child: Opacity(
                opacity: 1,
                child: Image.asset("assets/splash_screen.png"),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: rootPink,
                minimumSize: Size(200, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                print("hello world");
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return Login();
                    },
                  ),
                );
              },
              child: Text(
                "Proceed ...",
                style: TextStyle(fontSize: 15),
              ),
            ),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                  foregroundColor: rootPink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  minimumSize: Size(200, 40)),
              icon: Icon(Icons.track_changes_outlined),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return Expenses();
                    },
                  ),
                );
              },
              label: Text(
                "Expense Tracker ",
                style: TextStyle(color: rootPink, fontSize: 14),
              ),
            )
          ],
        ),
      ),
    );
  }
}
