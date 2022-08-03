import 'package:flutter/material.dart';

import '../util/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "allassets/images/login_image.png",
              fit: BoxFit.cover,
              // height: 500,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome To Nested",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter UserName", labelText: "UserName"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Pasword"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                child: Text("Login"),
                // style: TextStyle(fontWeight: FontWeight.bold),
                style: TextButton.styleFrom(minimumSize: Size(120, 43)),
                onPressed: () {
                  print("Mukesh Output"); // To Write
                  Navigator.pushNamed(context, RoutesToApp.homeRoutes);
                }),
          ],
        ),
      ),
    );
  }
}
