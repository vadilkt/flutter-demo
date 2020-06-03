import 'package:flutter/material.dart';

class Bouton extends StatefulWidget {
  final String _text;
  final String _date;

  Bouton(this._date, this._text);

  _Bouton createState() => _Bouton();
}

class _Bouton extends State<Bouton> {
  bool _active = false;
  void _isTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _isTap,
      child: _active
          ? Container(
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(70),
                            topRight: Radius.circular(70),
                            bottomLeft: Radius.circular(70),
                            bottomRight: Radius.circular(70),
                          ),
                          color: Color.fromRGBO(254, 135, 19, 1),
                        ),
                        child: Center(
                          child: Text(
                            widget._text,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                          child: Center(
                            child: Icon(Icons.check_circle_outline,
                                color: Color.fromRGBO(254, 135, 19, 1)),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(widget._date,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)))
                ],
              ),
            )
          : Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70),
                        topRight: Radius.circular(70),
                        bottomLeft: Radius.circular(70),
                        bottomRight: Radius.circular(70),
                      ),
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    child: Center(
                      child: Text(
                        widget._text,
                        style: TextStyle(
                            color: Color.fromRGBO(254, 135, 19, 1),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(widget._date,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)))
                ],
              ),
            ),
    );
  }
}
