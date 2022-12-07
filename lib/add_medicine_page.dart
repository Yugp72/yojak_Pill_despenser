import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'round_button.dart';
// String finalans = '';
String time1 = '';
String time2 = '';
String time3 = '';

class Addmedicinepage extends StatelessWidget {
  static const id = 'add_medicine_page';

  String date1 = '';
  String date2 = '';

  String quantity = '';
  String quan1 = '';
  String quan2 = '';
  String quan3 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black.withOpacity(0.1),
      body:
      //SingleChildScrollView(
      //child:
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background2.png'), fit: BoxFit.cover),
        ),
        padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
        child: Column(children: [
          TextField(
            style: TextStyle(
              color: Colors.black45,
            ),
            textAlign: TextAlign.center,
            onChanged: (value) {
              // password = value;
              //Do something with the user input.
            },
            decoration: kInputDecoration2.copyWith(hintText: 'Medicine Name'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 30, 0, 0),
            child: Container(
              child: Row(
                children: [
                  Text(
                    'Total Med. Added:',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    height: 50,
                    width: 200,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        quantity=value;
                        //print(quantity);
                        //Do something with the user input.
                      },
                      decoration:
                      kInputDecoration2.copyWith(hintText: 'Quanty'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(100, 30, 0, 0),
              child: Row(
                children: [
                  Text('Time of Dispense'),
                  Padding(
                    padding: EdgeInsets.only(left: 90),
                  ),
                  Text('Qty'),
                ],
              )),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 25, 0, 0),
            child: Row(
              children: [
                Icon(
                  WeatherIcons.sunrise,
                  color: Colors.black45,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: TimePikker(),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(75, 0, 0, 0),
                  height: 40,
                  width: 140,
                  child: TextField(
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      quan1 = value;
                    },
                    decoration: kInputDecoration2.copyWith(hintText: ''),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 18, 0, 0),
            child: Row(
              children: [
                Icon(
                  WeatherIcons.day_sunny,
                  color: Colors.black45,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: TimePikker(),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(75, 0, 0, 0),
                  height: 40,
                  width: 140,
                  child: TextField(
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      quan2 = value;
                    },
                    decoration: kInputDecoration2.copyWith(hintText: ''),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
            child: Row(
              children: [
                Icon(
                  WeatherIcons.night_alt_cloudy,
                  color: Colors.black45,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: TimePikker(),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(75, 0, 0, 0),
                  height: 40,
                  width: 140,
                  child: TextField(
                    style: TextStyle(
                      color: Colors.black45,
                    ),
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      quan3 = value;
                    },

                    decoration: kInputDecoration2.copyWith(hintText: ''),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 20, 0, 0),
            child: Container(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                    height: 40,
                    width: 170,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        date1 = value;
                        //Do something with the user input.
                      },
                      decoration:
                      kInputDecoration2.copyWith(hintText: 'Start Date'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                    height: 40,
                    width: 170,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        date2 = value;
                        //print(date2);
                        //Do something with the user input.
                      },
                      decoration:
                      kInputDecoration2.copyWith(hintText: 'End Date'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(50, 0, 50, 3),
            child: MaterialButton(
              height: 40,
              minWidth: 100,
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text('Submit'),
              ),
              onPressed: () {
                finalans = quan3 + time1.substring(0,2)+time1.substring(3,5) + "0" + "0606" +"0" + "0606";

                print(int.parse(finalans));
                Navigator.pop(context);
              },
              color: Colors.blue,
            ),
          ),

          Text(
            quantity,
            style: TextStyle(
              fontSize: 10,
              color: Colors.red,
            ),
          ),
        ]),
      ),
    );
  }
}

class TimePikker extends StatefulWidget {
  const TimePikker();
  @override
  State<TimePikker> createState() => _TimePikkerState();
}

class _TimePikkerState extends State<TimePikker> {
  //String get getTime => _time;
  @override
  // static String time='';
  TimeOfDay _timeOfDay = TimeOfDay(hour: 8, minute: 30);
  String s = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // display the chosen time
              Text(
                time1 = _timeOfDay.format(context).toString(),
                style: TextStyle(fontSize: 10),
              ),
              // button
              MaterialButton(
                height: 20,
                minWidth: 100,
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('Press'),
                ),
                onPressed: () {
                  showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  ).then((value) {
                    setState(() {
                      _timeOfDay = value!;
                      time1 = value.format(context).toString();
                      // Text(time,style: TextStyle(
                      //   fontSize: 10,
                      // ),);
                    });
                  });
                },
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TimePikker2 extends StatefulWidget {
  const TimePikker2();
  @override
  _TimePikker2State createState() => _TimePikker2State();
}

class _TimePikker2State extends State<TimePikker> {
  //String get getTime => _time;
  @override
  //static String time='';
  TimeOfDay _timeOfDay = TimeOfDay(hour: 8, minute: 30);
  String s = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // display the chosen time
              Text(
                time2 = _timeOfDay.format(context).toString(),
                style: TextStyle(fontSize: 10),
              ),
              // button
              MaterialButton(
                height: 20,
                minWidth: 100,
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('Press'),
                ),
                onPressed: () {
                  showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  ).then((value) {
                    time2 = value!.format(context).toString();
                    setState(() {
                      _timeOfDay = value!;
                      time2 = value.format(context).toString();
                      // Text(time,style: TextStyle(
                      //   fontSize: 10,
                      // ),);
                    });
                  });
                },
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TimePikker3 extends StatefulWidget {
  const TimePikker3();
  @override
  _TimePikker3State createState() => _TimePikker3State();
}

class _TimePikker3State extends State<TimePikker> {
  //String get getTime => _time;
  @override
  // String time='';
  TimeOfDay _timeOfDay = TimeOfDay(hour: 8, minute: 30);
  String s = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // display the chosen time
              Text(
                time3 = _timeOfDay.format(context).toString(),
                style: TextStyle(fontSize: 10),
              ),
              // button
              MaterialButton(
                height: 20,
                minWidth: 100,
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('Press'),
                ),
                onPressed: () {
                  showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  ).then((value) {
                    time3 = value!.format(context).toString();
                    setState(() {
                      _timeOfDay = value!;
                      time3 = value.format(context).toString();
                      // Text(time,style: TextStyle(
                      //   fontSize: 10,
                      // ),);
                    });
                  });
                },
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}
