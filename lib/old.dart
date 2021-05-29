import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Old extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(85, 0, 109,1),
        title: Text(
          'Old',
          style: TextStyle(
            fontFamily: 'PatrickHand',
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(179, 129, 194,1),
      body: SafeArea(
          child:
        CustomScrollView(
        slivers: <Widget>[

      SliverPadding(
        padding: const EdgeInsets.all(10),
        sliver: SliverList(
          delegate: SliverChildListDelegate ([
            Card(
              color: Color.fromRGBO(85, 0, 109,1),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child:ListTile(
                leading:CircleAvatar(radius: 25,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('images/uid2.jpg') ,),
                title:Text('Chat 1',style: TextStyle(
                  fontFamily: 'PatrickHand',
                  fontSize: 25,
                  color: Colors.white,
                ),

                ),
              ),
            ),
            Card(
              color: Color.fromRGBO(85, 0, 109,1),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child:ListTile(
                leading:CircleAvatar(radius: 25,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('images/uid1.jpg') ,),
                title:Text('Chat 2',style: TextStyle(
                  fontFamily: 'PatrickHand',
                  fontSize: 25,
                  color: Colors.white,
                ),

                ),
              ),
            ),
            Card(
              color: Color.fromRGBO(85, 0, 109,1),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child:ListTile(
                leading:CircleAvatar(radius: 25,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('images/uid2.jpg') ,),
                title:Text('Chat 3',style: TextStyle(
                  fontFamily: 'PatrickHand',
                  fontSize: 25,
                  color: Colors.white,
                ),

                ),
              ),
            ),
            Card(
              color: Color.fromRGBO(85, 0, 109,1),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child:ListTile(
                leading:CircleAvatar(radius: 25,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('images/uid1.jpg') ,),
                title:Text('Chat 4',style: TextStyle(
                  fontFamily: 'PatrickHand',
                  fontSize: 25,
                  color: Colors.white,
                ),

                ),
              ),
            ),
            Card(
              color: Color.fromRGBO(85, 0, 109,1),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child:ListTile(
                leading:CircleAvatar(radius: 25,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('images/uid2.jpg') ,),
                title:Text('Chat 5',style: TextStyle(
                  fontFamily: 'PatrickHand',
                  fontSize: 25,
                  color: Colors.white,
                ),

                ),
              ),
            ),
            Card(
              color: Color.fromRGBO(85, 0, 109,1),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child:ListTile(
                leading:CircleAvatar(radius: 25,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('images/uid1.jpg') ,),
                title:Text('Chat 6',style: TextStyle(
                  fontFamily: 'PatrickHand',
                  fontSize: 25,
                  color: Colors.white,
                ),

                ),
              ),
            ),
            Card(
              color: Color.fromRGBO(85, 0, 109,1),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child:ListTile(
                leading:CircleAvatar(radius: 25,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('images/uid1.jpg') ,),
                title:Text('Chat 7',style: TextStyle(
                  fontFamily: 'PatrickHand',
                  fontSize: 25,
                  color: Colors.white,
                ),

                ),
              ),
            ),
            Card(
              color: Color.fromRGBO(85, 0, 109,1),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child:ListTile(
                leading:CircleAvatar(radius: 25,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('images/uid2.jpg') ,),
                title:Text('Chat 8',style: TextStyle(
                  fontFamily: 'PatrickHand',
                  fontSize: 25,
                  color: Colors.white,
                ),

                ),
              ),
            ),
            Card(
              color: Color.fromRGBO(85, 0, 109,1),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child:ListTile(
                leading:CircleAvatar(radius: 25,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('images/uid2.jpg') ,),
                title:Text('Chat 9',style: TextStyle(
                  fontFamily: 'PatrickHand',
                  fontSize: 25,
                  color: Colors.white,
                ),

                ),
              ),
            ),
            Card(
              color: Color.fromRGBO(85, 0, 109,1),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child:ListTile(
                leading:CircleAvatar(radius: 25,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage('images/uid1.jpg') ,),
                title:Text('Chat 10',style: TextStyle(
                  fontFamily: 'PatrickHand',
                  fontSize: 25,
                  color: Colors.white,
                ),

                ),
              ),
            ),
          ],
          ),
        ),
      ),

      ],
    )

    ),
    );
  }
}