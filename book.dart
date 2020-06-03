import 'package:design/calendar.dart';
import 'package:design/model/bouton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'card.dart';

class Book extends StatefulWidget {
  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<Book> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 10, right: 10),
      physics: AlwaysScrollableScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 15),
            child: Row(
              children: <Widget>[
                Text(
                  'Books',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.only(left: 40),
                  height: 35,
                  width: 128,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color.fromRGBO(254, 135, 19, 1),
                      ),
                      top: BorderSide(
                        color: Color.fromRGBO(254, 135, 19, 1),
                      ),
                      right: BorderSide(
                        color: Color.fromRGBO(254, 135, 19, 1),
                      ),
                      left: BorderSide(
                        color: Color.fromRGBO(254, 135, 19, 1),
                      ),
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.wb_sunny,
                          color: Color.fromRGBO(254, 135, 19, 1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text('2020-04-20',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(254, 135, 19, 1),
                            )),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 65),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color.fromRGBO(254, 135, 19, 1),
                      ),
                      top: BorderSide(
                        color: Color.fromRGBO(254, 135, 19, 1),
                      ),
                      right: BorderSide(
                        color: Color.fromRGBO(254, 135, 19, 1),
                      ),
                      left: BorderSide(
                        color: Color.fromRGBO(254, 135, 19, 1),
                      ),
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.lock_outline,
                      color: Color.fromRGBO(254, 135, 19, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 20),
            child: Row(
              children: <Widget>[
                Text('2nd grade',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                Icon(
                  Icons.arrow_drop_down_circle,
                  color: Color.fromRGBO(254, 135, 19, 1),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Cardi('assets/images/ours.png', 'hi'),
              Cardi('assets/images/ours.png', 'hi2')
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Cardi('assets/images/ours.png', 'hi3'),
              Cardi('assets/images/ours.png', 'hi4')
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Cardi('assets/images/ours.png', 'hi5'),
              Cardi('assets/images/ours.png', 'hi6')
            ],
          ),
        ],
      ),
    );
  }
}
