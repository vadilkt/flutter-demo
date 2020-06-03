import 'package:design/calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Person extends StatefulWidget {
  @override
  _Person createState() => _Person();
}

class _Person extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 340,
                  width: double.infinity,
                  color: Color.fromRGBO(255, 201, 49, 1),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 50,
                          child: Image.asset('assets/images/ours.png',
                              fit: BoxFit.cover),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Mon ours',
                              style: TextStyle(
                                  color: Color.fromRGBO(254, 135, 19, 1),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    right: 10,
                    top: 45,
                    child: Icon(Icons.brush,
                        color: Color.fromRGBO(254, 135, 19, 1))),
                Positioned(
                  top: 230,
                  right: 15,
                  left: 15,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          width: 170,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                AntDesign.trademark,
                                color: Color.fromRGBO(254, 135, 19, 1),
                                size: 15,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Remaining Points',
                                    style: TextStyle(
                                      color: Color.fromRGBO(
                                        254,
                                        135,
                                        19,
                                        1,
                                      ),
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    '2588',
                                    style: TextStyle(
                                        color: Color.fromRGBO(
                                          254,
                                          135,
                                          19,
                                          1,
                                        ),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 160,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                AntDesign.profile,
                                color: Color.fromRGBO(254, 135, 19, 1),
                                size: 15,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Member Date',
                                    style: TextStyle(
                                      color: Color.fromRGBO(
                                        254,
                                        135,
                                        19,
                                        1,
                                      ),
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    '2020-04-20',
                                    style: TextStyle(
                                        color: Color.fromRGBO(
                                          254,
                                          135,
                                          19,
                                          1,
                                        ),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 340),
                  color: Colors.white,
                  width: double.infinity,
                  height: 340,
                ),
                Positioned(
                  top: 320,
                  right: 15,
                  left: 15,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 200),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 1,
                                  offset: Offset(1, 1))
                            ],
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      MaterialIcons.book,
                                      color: Colors.red,
                                      size: 40,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Glossary',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      MaterialIcons.event_note,
                                      color: Colors.lightBlue,
                                      size: 40,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Report',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      MaterialIcons.show_chart,
                                      color: Colors.purple,
                                      size: 40,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Leaderboard',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black54,
                                    blurRadius: 1,
                                    offset: Offset(1, 1))
                              ],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.mail,
                                    color: Colors.black54,
                                    size: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text('Purchase History',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 15,
                                        )),
                                  ),
                                  SizedBox(
                                    width: 100,
                                  ),
                                  IconButton(
                                      icon: Icon(
                                        Icons.keyboard_arrow_right,
                                        color: Colors.black54,
                                        size: 15,
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Calend()));
                                      }),
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black54,
                                    blurRadius: 1,
                                    offset: Offset(1, 1))
                              ],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.insert_photo,
                                    color: Colors.black54,
                                    size: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text('Scan',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 15,
                                        )),
                                  ),
                                  SizedBox(
                                    width: 230,
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colors.black54,
                                    size: 15,
                                  ),
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black54,
                                    blurRadius: 1,
                                    offset: Offset(1, 1))
                              ],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    Icons.settings,
                                    color: Colors.black54,
                                    size: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text('Settings',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 15,
                                        )),
                                  ),
                                  SizedBox(
                                    width: 220,
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colors.black54,
                                    size: 15,
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}
