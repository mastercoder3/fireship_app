import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            brightness: Brightness.dark, accentColor: Colors.redAccent),
        home: Scaffold(
          appBar: AppBar(title: Text('Junaid Rocks.'),),
          body: Center(

            child: Icon(Icons.cake),


            // child: Platform.isAndroid
            //     ? Switch(
            //         value: true,
            //         onChanged: (v) => null,
            //       )
            //     : CupertinoSwitch(
            //         value: true,
            //         onChanged: (v) => null,
            //       ),
          ),
          floatingActionButton: FloatingActionButton(child:  Icon(Icons.cake),onPressed: () {
          
          },),
          drawer: Drawer(),
        ));
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('Hello Junaid'),
      ),
    );
  }
}

class MyFirstWidget extends StatefulWidget {
  final Color color;

  MyFirstWidget({Key key, this.color = Colors.red}) : super(key: key);

  @override
  _MyFirstWidgetState createState() => _MyFirstWidgetState();
}

class _MyFirstWidgetState extends State<MyFirstWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Text('$count'),
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}
