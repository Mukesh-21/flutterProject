import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

import '../util/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeflag = false;
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
              "Welcome $name",
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
                    onChanged: (value) {
                      name = ", " + value;
                      setState(() {});
                    },
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
            InkWell(
              onTap: () async {
                setState(() {
                  changeflag = true;
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, RoutesToApp.homeRoutes);
                // Navigator.pushNamed(context, RoutesToApp.homeRoutes);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: changeflag ? 60 : 130,
                height: 40,
                alignment: Alignment.center,
                child: changeflag
                    ? Icon(
                        Icons.done,
                        color: Colors.white,
                      )
                    : Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(changeflag ? 40 : 5),
                ),
              ),
            ),

            /*
            ElevatedButton(
                child: Text("Login"),
                // style: TextStyle(fontWeight: FontWeight.bold),
                style: TextButton.styleFrom(minimumSize: Size(120, 43)),
                onPressed: () {
                  print("Mukesh Output"); // To Write
                  Navigator.pushNamed(context, RoutesToApp.homeRoutes);
                }),*/
            SizedBox(
              height: 20,
            ),
            Text("Didn't Have Accout?"),
          ],
        ),
      ),
    );
  }
}
