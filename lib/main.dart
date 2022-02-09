import 'home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData.dark().copyWith(
          backgroundColor: Color.fromARGB(255, 20, 10, 50),
          primaryColor: Color.fromARGB(255, 20, 10, 50),
          appBarTheme:
              AppBarTheme(backgroundColor: Color.fromARGB(255, 20, 10, 50))),
      debugShowCheckedModeBanner: false,
    );
  }
}
