import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animations/loading_animations.dart';
import 'package:get/get.dart';

import 'Info_Pages/Pages/Home_Page.dart';
import 'Info_Pages/Pages/Login_Page.dart';
import 'Info_Pages/Pages/body_page/Item_detail_page.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // home: HomPage(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        // primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: RoutesToApp.PopularItemDetailsRoutes,
      routes: {
        "/": (context) => LoginPage(),
        RoutesToApp.homeRoutes: (context) => HomPage(),
        RoutesToApp.loginRoutes: (context) => LoginPage(),
        RoutesToApp.PopularItemDetailsRoutes:(context) => PopularItemDetails(),
      },
    );
  }
}
