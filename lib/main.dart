import 'package:flutter/material.dart';

import 'Filter_Screen_Page.dart';
import 'boton.dart';
import 'demo.dart';
import 'filter_screen.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Demo(),
    );
  }
}
