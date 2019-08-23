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
          appBar: AppBar(
            title: Text('Junaid Rocks.'),
          ),


        // body: ListView(
        //         scrollDirection: Axis.vertical,
        //         children: _cards(),
        //       ),

        // body: ListView.builder(itemBuilder: (context, idx){
        //   return Container(
        //     color: Colors.blue,
        //     margin: const EdgeInsets.all(20),
        //     height: 100,
        //     child: Text('$idx'),
        //   );
        // },
        // ),

        body: GridView.count(
          crossAxisCount: 2,
          children: _cards(),
        ),

          

          // body: SizedBox.expand(
          //   child: Stack(
          //     children: <Widget>[
          //       Align(
          //           alignment: Alignment.center,
          //           child: Icon(Icons.camera, color: Colors.red, size: 100)),
          //       Icon(Icons.camera, color: Colors.green, size: 100),
          //       Positioned(
          //           bottom: 0,
          //           child: (Icon(Icons.camera,
          //               color: Colors.blueGrey, size: 100))),
          //     ],
          //   ),
          // ),

          // body: Container(
          //   color: Colors.blue,
          //   padding: const EdgeInsets.all(16),
          //   child: Column(
          //     // mainAxisSize: MainAxisSize.min,
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     crossAxisAlignment: CrossAxisAlignment.stretch,
          //     children: <Widget>[
          //       Icon(Icons.cake, color: Colors.red, size: 50),
          //       Icon(Icons.cake, color: Colors.red, size: 100),
          //       Icon(Icons.cake, color: Colors.red, size: 200)
          //     ],
          //   ),
          // ),

          // body: Center(
          //   child: Material(
          //     color: Colors.red,
          //     child: InkWell(
          //       onTap: () => print('Button pressed!'),
          //       child: Container(
          //         width: 50,
          //         height: 50,
          //         // color: Colors.red,
          //       ),
          //     ),
          //   ),
          // ),

          // body: Center(
          //   child: Row(
          //     children: <Widget>[
          //       Expanded(
          //         child: Container(
          //             child: Text(
          //           'Hello Junaid, how are you.',
          //           overflow: TextOverflow.ellipsis,
          //           style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          //         )),
          //       ),
          //     ],
          //   ),
          // ),

          // body: Padding(
          //   padding: const EdgeInsets.all(15.0),
          //   child: Icon(Icons.computer, size: 100, color: Colors.blueAccent,),
          // ),

          // body: Align(
          //   alignment: Alignment.bottomLeft,
          //   child: Icon(Icons.cake, size: 70, color: Colors.redAccent,),

          //   // child: Platform.isAndroid
          //   //     ? Switch(
          //   //         value: true,
          //   //         onChanged: (v) => null,
          //   //       )
          //   //     : CupertinoSwitch(
          //   //         value: true,
          //   //         onChanged: (v) => null,
          //   //       ),
          // ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.cake),
            onPressed: () {},
          ),
          drawer: Drawer(),
        ));
  }

    List<Widget> _cards() {
      return [1,2,3,4,5,6,7,8,9].map((v) => Container(
          color: Colors.blue,
          margin: EdgeInsets.all(20),
          height: 100,
          child: Text('$v'),
        )
      ).toList();
    }
}

class MyContainer extends StatelessWidget {
  const MyContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40.0),
      height: 190,
      padding: const EdgeInsets.only(left: 150.0),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 2, color: Colors.greenAccent),
          // boxShadow:[
          //   BoxShadow(offset: Offset(40,40), color: Colors.white)
          // ],
          gradient: LinearGradient(colors: [Colors.red, Colors.yellow])),
      child: Icon(
        Icons.computer,
        size: 100,
        color: Colors.redAccent,
      ),
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
