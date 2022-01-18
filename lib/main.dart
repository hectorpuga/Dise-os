import 'package:disenos/Screens/basic_design.dart';
import 'package:disenos/Screens/home_screen.dart';
import 'package:disenos/Screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home_screen',
        routes: {
          'basic_design': (_) => const BasicDesignScreen(),
          'scroll_screen': (_) => const ScrollScreen(),
          'home_screen': (_) => const HomeScreen()
        });
  }
}
