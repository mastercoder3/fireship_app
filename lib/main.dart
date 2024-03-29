import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      routes: {
       '/home': (context) => HomeScreen(),
      //  '/slideshow': (context) => SlideshowScreen()
     },

     home: HomeScreen(),

        // theme: ThemeData(
        //     brightness: Brightness.dark,
        //     accentColor: Colors.redAccent,
        //     primaryColor: Colors.lightGreen,
        //     textTheme: TextTheme(
        //         body1: TextStyle(color: Colors.red, fontSize: 30),
        //         headline: TextStyle(color: Colors.blue, fontSize: 70))),
        // home: Scaffold(
        //   appBar: AppBar(
        //     title: Text('Junaid Rocks here.'),
        //   ),

        //   body: Center(
        //     child: MyAnimation(),
        //   ),

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

          // body: GridView.count(
          //   crossAxisCount: 2,
          //   children: _cards(),
          // ),

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
          // floatingActionButton: FloatingActionButton(
          //   child: Icon(Icons.cake),
          //   onPressed: () {},
          // ),
          // drawer: Drawer(),
        //)
        );
  }

  List<Widget> _cards() {
    return [1, 2, 3, 4, 5, 6, 7, 8, 9]
        .map((v) => Container(
              color: Colors.blue,
              margin: EdgeInsets.all(20),
              height: 100,
              child: Text('$v'),
            ))
        .toList();
  }
}

class MyAnimation extends StatefulWidget {
  const MyAnimation({
    Key key,
  }) : super(key: key);

  @override
  _MyAnimationState createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation> {
  double width = 100;
  double height = 100;
  Color color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      curve: Curves.elasticInOut,
      color: color,
      width: width,
      height: height,
      child: FlatButton(
        child: Text('Animate me', style: Theme.of(context).textTheme.headline,),
        onPressed: () {
          setState(() {
            width = Random().nextDouble() * 400;
            height = Random().nextDouble() * 400;

            int r = Random().nextInt(255);
            int b = Random().nextInt(255);
            int g = Random().nextInt(255);
            color = Color.fromRGBO(r, b, g, 1);
          });
        },
      ),
    );
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
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text('Home'), backgroundColor: Colors.red,),
     body: Center(
       child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           FlatButton(child: Text('push'), color: Colors.green, onPressed: () {

             // Navigator.push(
             //   context,
             //   MaterialPageRoute(builder: (context) => SlideshowScreen(name: 'Jeff'))
             // );


           //  Navigator.pushNamed(
           //     context,
           //     '/slideshow'
           //   );

             Navigator.pushNamed(
               context,
               '/slideshow'
             );

           },),

         ],
       ),
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
