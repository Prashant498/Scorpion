import 'package:flutter/material.dart';
import 'package:health/Registration.dart';
import 'package:health/chat.dart';
import 'package:health/hlp.dart';
import 'package:health/myprf.dart';
import 'package:health/old.dart';
import 'login.dart';
import 'Registration.dart';
import 'Home.dart';
import 'chat.dart';
import 'old.dart';
import 'todo.dart';
import 'package:health/Comm.dart';

void main() async{


  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: '/',
      routes: {
        '/' : (context)=>login(),
        '/reg' : (context)=>Registration(),
        '/hme' : (context)=>Home(),
        '/cht' : (context)=>ChatScreen(),
        '/cmm' : (context)=>Comm(),
        '/old' : (context)=>Old(),
        '/td' : (context)=>Todo(),
        '/hp' : (context)=>Help(),
        '/mpf' : (context)=>MPF(),
      },
    );
  }
}