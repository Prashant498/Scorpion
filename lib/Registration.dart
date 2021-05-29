import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
// ignore: camel_case_types, must_be_immutable
class Registration extends StatelessWidget {
  final _auth= FirebaseAuth.instance;
  bool showSpinner = false;
  String nme;
  String email;
  String pwd;
  String pc;
  int ic=0;

  @override

  Widget build(BuildContext context) {
    return     MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(85, 0, 109,1),
          title: Text(
            'Registration',
            style: TextStyle(
              fontFamily: 'PatrickHand',
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Color.fromRGBO(179, 129, 194,1),
        body: ModalProgressHUD(
            inAsyncCall: showSpinner,

            child:Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [



                SizedBox(height: 10,),
                SizedBox(height: 10,),
                Card(color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child:ListTile(
                    leading:Icon(Icons.person,
                        size: 25,
                        color: Color.fromRGBO(179, 129, 194,1)) ,
                    title:TextFormField(
                      textAlign: TextAlign.center,
                      autofocus:  true,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'Enter Name',

                      ),
                      onChanged: (value){
                        nme=value;
                      },
                    ),
                  ),
                ),
                Card(color: Colors.white,

                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                  child:ListTile(
                    leading:Icon(Icons.mail,
                        size: 25,
                        color: Color.fromRGBO(179, 129, 194,1)),
                    title:TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.center,
                      autofocus:  true,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'Mail',

                      ),
                      onChanged: (value){
                        email=value;
                      },
                    ),
                  ),
                ),

                Card(color: Colors.white,

                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                  child:ListTile(
                    leading:Icon(Icons.lock,
                        size: 25,
                        color: Color.fromRGBO(179, 129, 194,1)),
                    title:TextFormField(
                      obscureText: true,
                      textAlign: TextAlign.center,
                      autofocus:  true,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'Set Password',

                      ),
                      onChanged: (value){
                        pwd=value;
                      },
                    ),
                  ),
                ),
                Card(color: Colors.white,

                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                  child:ListTile(
                    leading:Icon(Icons.remove_red_eye_rounded,
                        size: 25,
                        color: Color.fromRGBO(179, 129, 194,1)),
                    title:TextFormField(
                      obscureText: true,
                      textAlign: TextAlign.center,
                      autofocus:  true,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'Confirm Password',

                      ),
                      onChanged: (value){
                        pc=value;

                      },
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(child: Text('Choose Your Icon!',style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),),),
                SizedBox(height: 10,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(hoverElevation: 10,onPressed: (){
                      showDialog<void>(
                      context: context,
                        barrierDismissible: false, // user must tap button!
                        builder: (BuildContext context) {
                        return AlertDialog(
                        title: const Text('Icon Choose'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: const <Widget>[
                              Text('You Have Choosen Male!'),
                              Text('Would you like to approve of this message?'),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('Approve'),
                            onPressed: () {
                              Navigator.of(context).pop();
                              ic=1;
                            },
                          ),
                        ],
                        elevation: 24,
                      );
                    },
                      );
                  },
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Color.fromRGBO(85, 0, 109,1),
                        backgroundImage: AssetImage('images/uid1.jpg') ,
                      ),
                    ),
                    FloatingActionButton(hoverElevation: 10,onPressed: (){
                      showDialog<void>(
                        context: context,
                        barrierDismissible: false, // user must tap button!
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Icon Choose'),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: const <Widget>[
                                  Text('You Have Choosen Fe-Male!'),
                                  Text('Would you like to approve of this message?'),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                child: const Text('Approve'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  ic=2;

                                  },
                              ),
                            ],
                            elevation: 24,
                          );
                        },
                      );
                    },
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Color.fromRGBO(85, 0, 109,1),
                        backgroundImage: AssetImage('images/uid2.jpg') ,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                SizedBox(height: 50,width: 200,
                  child: FloatingActionButton(
                    onPressed: () async {
                      if(pc!=pwd)
                      {
                        showDialog<void>(
                          context: context,
                          barrierDismissible: false, // user must tap button!
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Password Does not Match'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: const <Widget>[
                                    Text('Please Re-enter the Password to proceed!'),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('Retry'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                              elevation: 24,
                            );
                          },
                        );
                      }
                      try {
                        final newUser = await _auth.createUserWithEmailAndPassword(email: email, password: pwd);
                        if(newUser!= null)
                          {
                            Navigator.pushNamed(context, '/hme',arguments: ic);

                          }
                      }
                      catch(e){
                        print(e);
                      }
                     },
                    child: const Icon(Icons.arrow_right),
                    backgroundColor: Color.fromRGBO(236, 165, 147, 1),
                  ),
                ),
                SizedBox(height: 20,),


              ],
            )
        ),
      ),
    );
  }
}
