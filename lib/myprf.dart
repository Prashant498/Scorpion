import 'package:flutter/material.dart';
class MPF extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(236, 165, 147, 1),
        title: Text(
          'My Performance',
          style: TextStyle(
            fontFamily: 'PatrickHand',
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(236,236 , 236, 1),
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Oops! No Data Here!'),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}