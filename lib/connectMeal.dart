import 'package:flutter/material.dart';

class ConnectMeal extends StatefulWidget {
  @override
  _ConnectMealState createState() => _ConnectMealState();
}

class _ConnectMealState extends State<ConnectMeal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),

      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Text('식사를 잇다',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 18.0,
                        color: Colors.white)),
                Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.menu),
                          color: Colors.white,
                          onPressed: () {},
                        )
                      ],
                    ))
              ],
            ),
          ),
          SizedBox(height: 50.0),
          Padding(
            padding: EdgeInsets.only(left: 30.0, right: 30.0),
            child: Column(
              children: <Widget>[
                Text('우리 학교 식단을 보고 내가 먹고 싶은 메뉴를 계획하여 가정과 학교에서 볼 수 있어요.',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 5.0),
              ],
            ),
          ),

          SizedBox(height: 20.0),

          Container(
            height: MediaQuery
                .of(context)
                .size
                .height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: Container(
              child: Column(
                children: [
                  SizedBox(height: 20.0),
                  Image(
                      image: AssetImage('assets/food.png'),
                      fit: BoxFit.cover,
                      height: 230.0,
                      width: 180.0
                  ),
                  SizedBox(height: 35.0),
                  Text('알레르기 정보',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15.0),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 10.0),
                  Text('1.난류 2.우유 3.메밀 4.땅콩 5.대두 6.밀 7.고등어 8.게 9.새우\n 10.돼지고기 11.복숭아 12.토마토 13.아황산류 14.호두 15.닭고기\n 16.쇠고기 17.오징어 18.조개류(굴,전복,홍합, 포함)',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontSize: 12.0),
                    textAlign: TextAlign.center,
                  ),
                  FlatButton(
                    child: Text('식단짜기'),
                    onPressed: () => {
                      Navigator.pushNamed(context, '/makM')
                    },
                    color: Colors.blueAccent,
                    textColor:Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}