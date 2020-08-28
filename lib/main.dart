import 'package:facebook_ui/constants/color_palette.dart';
import 'package:facebook_ui/screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Facebook',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: ColorPalette.scaffoldColor,
        ),
        home: Scaffold(
          body: NavBarScreen(),
        ));
  }
}
