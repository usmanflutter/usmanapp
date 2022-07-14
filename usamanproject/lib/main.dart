

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:usamanproject/home.dart';

import 'package:usamanproject/routes.dart';



import 'login.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Constants.prefs = await SharedPreferences.getInstance();
  runApp(
    MaterialApp(
     
    color: Colors.yellow,
    
    debugShowCheckedModeBanner: false,
    title: "Catalog App",
    // ignore: prefer_const_constructors
    home: LoginPage(),
    
    theme: ThemeData
    (
   
      scaffoldBackgroundColor: Colors.grey,
      primaryColor: Color.fromARGB(255, 39, 38, 38),
      fontFamily: GoogleFonts.lato().fontFamily,
    ),

     routes: <String, WidgetBuilder> {
       MyRoutes.homeRoute: (context) => HomePage(),
      MyRoutes.loginRoute: (context) => LoginPage(),
       

     },
  )
  );
}
