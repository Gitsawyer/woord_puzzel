import 'package:flutter/material.dart';
import 'package:triple_word_puzzle/screens/woord_champ_screen.dart';

class SelectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, WoordChampScreen.route);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.purple,
            ),
            child: Text(
              'Play Woordchamp',
              style: TextStyle(
                  color: Colors.white
              ),
            ),
          ),
          Container(),
        ],
      ),
    );
  }


}