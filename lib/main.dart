import 'package:flutter/material.dart';
import 'package:untitled/asosiy_page.dart';
import 'package:untitled/home_page.dart';





void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AsosiyPage(),
      routes: {
        HomePage.id: (context) => HomePage(index: 0,),
        AsosiyPage.id: (context) => AsosiyPage(),
      },
    );
  }
}
