import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_1/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
    ));
    return  MaterialApp(
       //routes: {
        //'/page2': (context) => const Page2(),},

      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}
