import 'package:design/model/book.dart';
import 'package:design/model/person.dart';
import 'package:design/model/study.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'card.dart';
import 'package:flutter/material.dart';

class Nexti extends StatefulWidget {
  @override
  _NextState createState() => _NextState();
}

class _NextState extends State<Nexti> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _vu = [
    Book(),
    Study(),
    Person(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _vu[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text(''),
            icon: Icon(
              Icons.book,
            ),
          ),
          BottomNavigationBarItem(
              title: Text(''), icon: Icon(Ionicons.md_book)),
          BottomNavigationBarItem(
              title: Text(''), icon: Icon(MaterialIcons.person)),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(254, 135, 19, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}
