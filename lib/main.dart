import 'package:flutter/material.dart';
import 'package:triple_word_puzzle/routes.dart';

void main() {
  runApp(WoordPuzzelApp());
}

class WoordPuzzelApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Games",
      initialRoute: "/",
      routes: Routes.routes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
