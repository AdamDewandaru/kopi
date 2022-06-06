import 'package:flutter/material.dart';
import 'package:kopi/login.dart';
import 'Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/kopi': (BuildContext context) => LoginScreen(),
      },
      theme: ThemeData(primaryColor: Colors.brown),
      home: LoginScreen(),
    );
  }
}
