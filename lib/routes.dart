import 'package:flutter/material.dart';
import 'package:triple_word_puzzle/screens/select_screen.dart';
import 'package:triple_word_puzzle/screens/woord_champ_screen.dart';

class Routes {

  static var routes = <String, WidgetBuilder> {
    "/" : (BuildContext context) => SelectScreen(),
    WoordChampScreen.route : (BuildContext context) => WoordChampScreen(),
  };

}