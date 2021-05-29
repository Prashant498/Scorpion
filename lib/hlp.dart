import 'package:flutter/material.dart';
class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(85, 0, 109,1),
        title: Text(
          'Help',
          style: TextStyle(
            fontFamily: 'PatrickHand',
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(179, 129, 194,1),
      body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Help Page to be Updated Soon!'),
                ],
              ),

            ],
          ),
      ),
    );
  }
}