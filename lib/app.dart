//https://github.com/rajayogan/flutterui-curveddesigns
import 'package:flutter/material.dart';
import 'package:flutter_app/connectHeart.dart';
import 'package:flutter_app/connectPoem.dart';
import 'package:flutter_app/writePoem.dart';
import 'package:flutter_app/readPoem.dart';
import 'package:flutter_app/connectMeal.dart';
import 'package:flutter_app/makeMeal.dart';
import 'package:flutter_app/mealList.dart';

import 'package:flutter_app/firebase.dart';

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
      initialRoute: '/',
      routes: {
        '/conH' : (context) => ConnectHeart(),
        '/conP' : (context) => ConnectPoem(),
        '/wriP' : (context) => WritePoem(),
        '/reaP' : (context) => ReadPoem(),
        '/conM' : (context) => ConnectMeal(),
        '/makM' : (context) => MakeMeal(),
        '/meaL' : (context) => MealList(),

        '/fire' : (context) => FirestoreFirstDemo(),
      },
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    Container(child: ConnectHeart()),
    Container(child: ConnectHeart()),
    Text(
      'Index 2: School',
    ),
    Container(child: ConnectMeal()),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('홈'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('마음잇다'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('목표잇다'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            title: Text('식사잇다'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF21BFBD),
        unselectedItemColor: Colors.black26,
        onTap: _onItemTapped,
      ),
    );
  }
  Widget _buildFoodItem(String imgPath, String linkName, String detail) {
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
                child: Row(
                    children: [
                      Hero(
                          tag: imgPath,
                          child: Image(
                              image: AssetImage(imgPath),
                              fit: BoxFit.cover,
                              height: 75.0,
                              width: 75.0
                          )
                      ),
                      SizedBox(width: 10.0),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Text(
                                linkName,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold
                                )
                            ),
                            Text(
                                detail,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 15.0,
                                    color: Colors.grey
                                )
                            )
                          ]
                      )
                    ]
                )
            ),
          ],
        )
    );
  }
}
