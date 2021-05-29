import 'package:flutter/material.dart';
class Todo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(85, 0, 109,1),
        title: Text(
          'TO-DO',
          style: TextStyle(
            fontFamily: 'PatrickHand',
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(179, 129, 194,1),
      body: SafeArea(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [




            ],
          )
      ),
    );
  }
}