import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Comm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(179, 129, 194,1),
      body: SafeArea(
          child:
              CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    pinned: true,
                    stretch: true,
                    backgroundColor: Color.fromRGBO(85, 0, 109,1),
                    onStretchTrigger: () {
                      // Function callback for stretch
                      return Future<void>.value();
                    },
                    expandedHeight: 150.0,
                    flexibleSpace: FlexibleSpaceBar(
                      stretchModes: const <StretchMode>[
                        StretchMode.zoomBackground,
                        StretchMode.blurBackground,
                        StretchMode.fadeTitle,
                      ],
                      centerTitle: true,
                      title: Text('Community',
                      textAlign: TextAlign.justify,),
                      background: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Image.asset( 'images/comm.jpg',
                            fit: BoxFit.cover,
                          ),
                          const DecoratedBox(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(0.0, 0.5),
                                end: Alignment.centerLeft,
                                colors: <Color>[
                                  Color(0x60000000),
                                  Color(0x00000000),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.all(20),
                    sliver: SliverGrid.count(
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(6),
                          child: Image.asset('images/mh1.jpg'),
                          color: Colors.green[100],
                        ),
                        Container(
                          padding: const EdgeInsets.all(6),
                          child: Image.asset('images/mh2.jpg'),
                          color: Colors.green[200],
                        ),
                        Container(
                          padding: const EdgeInsets.all(6),
                          child: Image.asset('images/mh3.jpg'),
                          color: Colors.green[300],
                        ),
                        Container(
                          padding: const EdgeInsets.all(6),
                          child: Image.asset('images/mh4.jpg'),
                          color: Colors.green[400],
                        ),
                        Container(
                          padding: const EdgeInsets.all(6),
                          child: Image.asset('images/mh5.jpg'),
                          color: Colors.green[500],
                        ),
                        Container(
                          padding: const EdgeInsets.all(6),
                          child: Image.asset('images/mh6.jpg'),
                          color: Colors.green[600],
                        ),
                        Container(
                          padding: const EdgeInsets.all(6),
                          child: Image.asset('images/mh7.jpg'),
                          color: Colors.green[700],
                        ),
                        Container(
                          padding: const EdgeInsets.all(6),
                          child: Image.asset('images/mh8.jpg'),
                          color: Colors.green[800],
                        ),
                        Container(
                          padding: const EdgeInsets.all(6),
                          child: Image.asset('images/mh9.jpg'),
                          color: Colors.grey,
                        ),
                        Container(
                          padding: const EdgeInsets.all(6),
                          child: Image.asset('images/mh10.png'),
                          color: Colors.blueGrey,
                        ),
                      ],
                    ),
                  ),

                ],
              )



    ),
    );

  }
}