import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: MyFirstWidget(color: Colors.black),
    )
    );
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


class MyFirstWidget extends StatefulWidget{

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
      child: FlatButton(child: Text('$count'), onPressed: (){
        setState(() {
         count++; 
        });
      },),
    );
  }
}