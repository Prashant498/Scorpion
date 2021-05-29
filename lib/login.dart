import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
// ignore: camel_case_types, must_be_immutable
class login extends StatelessWidget {

  bool showSpinner = false;
  final _auth = FirebaseAuth.instance;
  String email;
  String pwd;
  @override
  Widget build(BuildContext context) {
    return     MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(85, 0, 109,1),
        body: SafeArea(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                CircleAvatar(
                  radius: 140,
                  backgroundColor: Color.fromRGBO(85, 0, 109,1),
                  backgroundImage: AssetImage('images/logo.png') ,
                ),

                SizedBox(height: 20,),

                Card(color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child:ListTile(
                    leading:Icon(Icons.mail,
                      size: 25,
                      color: Colors.teal.shade200,) ,
                    title:TextFormField(
                      onChanged: (value) {
                      email = value;},
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.center,
                      autofocus:  true,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'E-mail ID',

                      ),
                    ),
                  ),
                ),
                Card(color: Colors.white,

                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                  child:ListTile(
                    leading:Icon(Icons.lock,
                      size: 25,
                      color: Colors.teal.shade200,),
                    title:TextFormField(
                    onChanged: (value){
                    pwd = value;},
                      textAlign: TextAlign.center,
                      obscureText: true,
                      autofocus:  true,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'Password',

                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(height: 50,width: 200,
                  child: Material(
                    elevation: 5.0,
                    color: Colors.teal.shade200,
                    borderRadius: BorderRadius.circular(30.0),
                    child: MaterialButton(
                      onPressed: () async {



                        try {
                          final user = await _auth.signInWithEmailAndPassword(
                              email: email, password: pwd);
                          if (user != null) {
                            Navigator.pushNamed(context, '/hme');
                          }


                        } catch (e) {
                          print(e);
                        }
                      },
                      minWidth: 200.0,
                      height: 42.0,
                      child: Text(
                        'Log In',
                      ),
                    ),
                  ),),
                SizedBox(height: 20,),
                SizedBox(height: 50,width: 100,
                  child: Material(
                    elevation: 5.0,
                    color: Colors.teal.shade200,
                    borderRadius: BorderRadius.circular(30.0),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context,'/reg');
                      },
                      minWidth: 200.0,
                      height: 42.0,
                      child: Text(
                        'SignUp',
                      ),
                    ),
                  ),),

              ],
            )
        ),
      ),
    );
  }
}
