import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calend extends StatefulWidget {
  @override
  _CalendState createState() => _CalendState();
}

class _CalendState extends State<Calend> {
  CalendarController _controller = CalendarController();
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    bool _isSwitched = false;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(top: 20),
                height: _height / 5.7,
                child: Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.arrow_back,
                              size: 28, color: Colors.black54),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Points Calendar',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                )),
            SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TableCalendar(
                  rowHeight: 45,
                  initialCalendarFormat: CalendarFormat.month,
                  daysOfWeekStyle: DaysOfWeekStyle(
                      weekendStyle:
                          TextStyle(color: Color.fromRGBO(254, 135, 19, 1))),
                  calendarStyle: CalendarStyle(
                    weekendStyle: TextStyle(color: Colors.black),
                    todayColor: Color.fromRGBO(254, 135, 19, 1),
                    selectedColor: Color.fromRGBO(254, 135, 19, 1),
                  ),
                  headerStyle: HeaderStyle(
                    centerHeaderTitle: true,
                    formatButtonVisible: false,
                  ),
                  calendarController: _controller,
                ),
                Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                    height: _height / 3.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.lightBlue,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  'Set up check-in reminder',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                  child: Row(
                                children: <Widget>[
                                  Icon(Icons.notifications_none,
                                      color: Colors.white, size: 28),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text('check in reminder',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12)),
                                ],
                              )),
                              Switch(
                                value: _isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    _isSwitched = value;
                                  });
                                },
                                activeColor: Colors.lightBlue,
                                activeTrackColor: Colors.lightBlueAccent,
                                materialTapTargetSize:
                                    MaterialTapTargetSize.padded,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                  child: Row(
                                children: <Widget>[
                                  Icon(Icons.access_time,
                                      color: Colors.white, size: 28),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text('Set time',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12)),
                                ],
                              )),
                              Text(
                                '12.00',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              )
                            ],
                          )
                        ],
                      ),
                    ))
              ],
            )),
          ],
        ));
  }
}
