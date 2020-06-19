import 'package:ecommerce/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main()
{ 
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp,DeviceOrientation.portraitDown])
      .then((_)=>
  runApp(
  MaterialApp(home: HomePage(),),
));
}

