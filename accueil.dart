import 'package:design/form.dart';
import 'package:flutter/material.dart';

class Accueil extends StatefulWidget {
  @override
  _Accueil createState() => _Accueil();
}

class _Accueil extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
          ),
          Container(
              height: double.infinity,
              child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 50,
                              ),
                              child: Image.asset('assets/images/ours.png'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text('Hi, Welcome!',
                                style: TextStyle(
                                  color: Color.fromRGBO(254, 135, 19, 1),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          )
                        ],
                      ),
                      Formulaire(),
                    ],
                  )))
        ],
      ),
    );
  }
}
