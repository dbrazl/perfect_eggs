import 'package:flutter/material.dart';
import 'package:perfect_eggs/theme.dart';

import 'pages/Home/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PERFECT.eggs',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: Home(),
    );
  }
}
