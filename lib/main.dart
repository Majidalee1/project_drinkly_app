import 'package:flutter/material.dart';
import './screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: ThemeData.light().iconTheme.copyWith(size: 60.0),
        primaryColor: Colors.deepOrange,
        accentColor: Color(0xfffEf9eb),
      ),
      home: HomeScreen(),
    );
  }
}
