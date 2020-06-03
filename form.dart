import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'model/next.dart';

class Formulaire extends StatefulWidget {
  @override
  _Form createState() => _Form();
}

class _Form extends State<Formulaire> {
  final _formKey = GlobalKey<FormState>();
  final _number = TextEditingController();
  final _pinController = TextEditingController();
  @override
  void dispose() {
    _number.dispose();
    _pinController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              controller: _number,
              style: TextStyle(
                color: Color.fromRGBO(254, 135, 19, 1),
              ),
              decoration: InputDecoration(
                errorStyle: TextStyle(
                  color: Color.fromRGBO(254, 135, 19, 1),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(254, 135, 19, 1),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(254, 135, 19, 1),
                  ),
                ),
                contentPadding: EdgeInsets.only(left: 40),
                prefixIcon: const Icon(Icons.phone_iphone,
                    color: Color.fromRGBO(254, 135, 19, 1)),
                labelText: 'Enter your phone number',
                labelStyle: TextStyle(
                  color: Color.fromRGBO(254, 135, 19, 1),
                  fontSize: 15,
                ),
              ),
              validator: (value) {
                if (value.length < 8) {
                  return 'Invalid number!';
                }
                return null;
              },
            ),
            SizedBox(
              height: 28,
            ),
            FlatButton(
              onPressed: null,
              child: Text(
                'Get verification code',
                style: TextStyle(
                    color: Color.fromRGBO(254, 135, 19, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: PinCodeTextField(
                controller: _pinController,
                length: 4,
                onChanged: null,
                shape: PinCodeFieldShape.box,
                fieldHeight: 50,
                fieldWidth: 50,
                borderWidth: 3,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                backgroundColor: Colors.transparent,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                activeColor: Color.fromRGBO(254, 135, 19, 1),
                activeFillColor: Color.fromRGBO(254, 135, 19, 1),
                inactiveColor: Color.fromRGBO(254, 135, 19, 1),
                selectedFillColor: Color.fromRGBO(254, 135, 19, 1),
                selectedColor: Color.fromRGBO(254, 135, 19, 1),
                textStyle: TextStyle(color: Color.fromRGBO(254, 135, 19, 1)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                width: 290,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: Colors.white,
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Nexti()),
                    );
                  },
                  child: Row(
                    children: <Widget>[
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                color: Color.fromRGBO(254, 135, 19, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 65),
                        child: Icon(Icons.arrow_forward,
                            color: Color.fromRGBO(254, 135, 19, 1)),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
