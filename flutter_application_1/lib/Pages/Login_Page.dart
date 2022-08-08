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
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeflag = true;
      });
      await Future.delayed(Duration(milliseconds: 700));
      await Navigator.pushNamed(context, RoutesToApp.homeRoutes);
      // Navigator.pushNamed(context, RoutesToApp.homeRoutes);
      setState(() {
        changeflag = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
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
                "Welcome1 $name",
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
                        hintText: "Enter UserName",
                        labelText: "UserName",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "UserName Cannot Be Blank";
                        } else if (value != 'Mukesh') {
                          return "Invalid UserName";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = ", " + value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Pasword",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password Cannot Be Blank";
                        } else if (value != 'Mukesh_219') {
                          return "Invalid PassWord";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Material(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(changeflag ? 40 : 5),
                child: InkWell(
                  onTap: () => moveToHome(context),
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
                    // decoration: BoxDecoration(

                    // ),
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
      ),
    );
  }
}
