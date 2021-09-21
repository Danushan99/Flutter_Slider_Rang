import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//void main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  _MyState createState() {
    return _MyState();
  }
}

class _MyState extends State<MyApp> {
  double val = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightBlue,
            title: Text(" Slider"),
          ),
          body: Container(
            height: 100,
            child: Slider(
              value: val,
              onChanged: (value) {
                setState(() {
                  val = value;
                });
              },
              min: 0,
              max: 10,
              activeColor: Colors.blue,
              inactiveColor: Colors.blue[100],
              label: val.round().toString(),
              divisions: 10,
            ),
          )),
    );
  }

  // slider without range
  // Slider(
  //             value: val,
  //             onChanged: (value) {
  //               setState(() {
  //                 val = value;
  //               });
  //             },
  //             min: 1,
  //             max: 10,
  //             activeColor: Colors.green,
  //             inactiveColor: Colors.green[100],
  //           )
}
