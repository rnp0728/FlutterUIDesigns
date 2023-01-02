import 'package:flutter/material.dart';
import 'package:flutteruidesign/screens/profilepage_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import './screens/loginpage_ui.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      home: const ProfilePage(),
    );
  }
}


