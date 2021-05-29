import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_core/firebase_core.dart';


// ignore: must_be_immutable
class Home extends StatelessWidget {

  FirebaseUser loggedInUser;

  final _auth = FirebaseAuth.instance;


  void getCurrentUser() async {
    try {
      final User = await _auth.currentUser;
      if (User != null) {
        loggedInUser = User as FirebaseUser;
      }
    } catch (e) {
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    final int ic = ModalRoute.of(context).settings.arguments;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(179, 129, 194,1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(112, 38, 133,1),

          title:Text(
            'MindSage',
            style: TextStyle(
              fontFamily: 'PatrickHand',
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          elevation: 20,
        ),
        drawer:Drawer(

          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(94, 36, 157,1),
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                  CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.black,
                  backgroundImage:AssetImage('images/uid$ic.jpg') ,
                ),
                    SizedBox(height: 10,),
                    Text('#23447',style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),),
        ],
              ),
              ),
              ListTile(
                leading: Icon(Icons.person,
                  size: 25,
                  color: Colors.teal.shade200,) ,
                title: Text('Profile'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawe
                },
              ),
              ListTile(
                leading: Icon(Icons.settings,
                  size: 25,
                  color: Colors.teal.shade200,) ,
                title: Text('Settings'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawe
                },
              ),
              ListTile(
                leading: Icon(Icons.lock,
                  size: 25,
                  color: Colors.teal.shade200,) ,
                title: Text('Privacy Policy'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawe
                },
              ),
              ListTile(
                leading: Icon(Icons.account_box_outlined,
                  size: 25,
                  color: Colors.teal.shade200,) ,
                title: Text('About us'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawe
                },
              ),
              ListTile(
                leading: Icon(Icons.account_box_outlined,
                  size: 25,
                  color: Colors.teal.shade200,) ,
                title: Text('Log Out'),
                onTap: () {
                  _auth.signOut();
                  Navigator.pushNamed(context,'/');
                },
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(140,20,20,0),
                child: Text('v 1.1.0'),
              ),
            ],
          ),
        ),

        body: SafeArea(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                elevation: 5.0,
                color: Color.fromRGBO(112, 38, 133,1),
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {

                  },
                  minWidth: 250.0,
                  height: 62.0,
                  child: Text(
                    '"Your Mind is the best master!"',
                    style: TextStyle(
                      fontFamily: 'PatrickHand',
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 400.0,
                width: 400.0,
                child: CarouselSlider(
                  items: [
                    Container(
                      alignment: Alignment.bottomRight
                      ,
                      child:  Material(
                        elevation: 3.0,
                        color: Color.fromRGBO(232, 118, 48,1),
                        borderRadius: BorderRadius.circular(30.0),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.pushNamed(context,'/cht');
                          },
                          minWidth: 20.0,
                          height: 18.0,
                          child: const Icon(Icons.send),
                        ),
                      ),


                      margin: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        image: DecorationImage(
                          image: AssetImage("images/doc1.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child:  Material(
                        elevation: 3.0,
                        color: Color.fromRGBO(232, 118, 48,1),
                        borderRadius: BorderRadius.circular(30.0),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.pushNamed(context,'/cht');
                          },
                          minWidth: 20.0,
                          height: 18.0,
                          child: const Icon(Icons.send),
                        ),
                      ),


                      margin: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        image: DecorationImage(
                          image: AssetImage("images/doc2.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight
                      ,
                      child:  Material(
                        elevation: 3.0,
                        color: Color.fromRGBO(232, 118, 48,1),
                        borderRadius: BorderRadius.circular(30.0),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.pushNamed(context,'/cht');
                          },
                          minWidth: 20.0,
                          height: 18.0,
                          child: const Icon(Icons.send),
                        ),
                      ),


                      margin: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        image: DecorationImage(
                          image: AssetImage("images/doc3.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight
                      ,
                      child:  Material(
                        elevation: 3.0,
                        color: Color.fromRGBO(232, 118, 48,1),
                        borderRadius: BorderRadius.circular(30.0),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.pushNamed(context,'/cht');
                          },
                          minWidth: 20.0,
                          height: 18.0,
                          child: const Icon(Icons.send),
                        ),
                      ),


                      margin: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        image: DecorationImage(
                          image: AssetImage("images/doc4.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight
                      ,
                      child:  Material(
                        elevation: 3.0,
                        color: Color.fromRGBO(232, 118, 48,1),
                        borderRadius: BorderRadius.circular(30.0),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.pushNamed(context,'/cht');
                          },
                          minWidth: 20.0,
                          height: 18.0,
                          child: const Icon(Icons.send),
                        ),
                      ),


                      margin: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        image: DecorationImage(
                          image: AssetImage("images/doc5.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],

                  options: CarouselOptions(
                    height: 300.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 1,
                    autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 1000),
                    viewportFraction: 0.85,
                  ),
                ),
              ),
            ],
          ),

        ),
        floatingActionButton:FloatingActionButton( //Floating action button on Scaffold
          onPressed: (){
            Navigator.pushNamed(context, '/mpf');
          },
          backgroundColor: Colors.deepPurpleAccent.shade700,
          child: Icon(Icons.person), //icon inside button
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar( //bottom navigation bar on scaffold
            color:Color.fromRGBO(112, 38, 133,1),
            shape: CircularNotchedRectangle(), //shape of notch
            notchMargin: 5, //notche margin between floating button and bottom appbar
            child: Row( //children inside bottom appbar
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(icon: Icon(Icons.people, color: Colors.white,), onPressed: () {
                  Navigator.pushNamed(context, '/cmm');
                },),

                IconButton(icon: Icon(Icons.recent_actors, color: Colors.white,), onPressed: () {
                  Navigator.pushNamed(context, '/old');
                },),
                SizedBox(width: 30,),
                IconButton(icon: Icon(Icons.track_changes_outlined, color: Colors.white,), onPressed: () {
                  Navigator.pushNamed(context, '/td');
                },),
                IconButton(icon: Icon(Icons.help_outline, color: Colors.white,), onPressed: () {
                  Navigator.pushNamed(context, '/hp');
                },),
              ],
            )
        ),
      ),);


  }
}
