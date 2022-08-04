import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/Pages/Home_Page.dart';
import 'package:flutter_application_1/Pages/login_page.dart';
import 'package:loading_animations/loading_animations.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomPage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        // primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      // initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        RoutesToApp.homeRoutes: (context) => HomPage(),
        RoutesToApp.loginRoutes: (context) => LoginPage(),
      },
    );
  }
}
