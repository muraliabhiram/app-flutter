import 'package:ecommerce/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main()
{ 
  runApp(  
 MaterialApp(
   home: HomePage(),
   theme: ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.dark,
    primaryColor: Colors.orange[800],
    accentColor: Colors.blue[600],

    // Define the default font family.
    fontFamily: 'Georgia',

    // Define the default TextTheme. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),
  )),
)
  //WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitUp,DeviceOrientation.portraitDown,
  //     DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight])
  //     .then((_)=>
  
;
}

