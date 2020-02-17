import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'logInRegister/logInManager.dart';
import 'home/homeManager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color.fromRGBO(170,0,20,1),
      ),

      home: false ? LogIn() :  Home(),
    );
  }
}
