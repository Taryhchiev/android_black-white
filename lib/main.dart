import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? Colors.grey[850] : Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              child: Icon(Icons.android,size: 80, color: Colors.black,),
              decoration: BoxDecoration(
                  color: darkMode ? Colors.grey[850] : Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,//darkMode ? Colors.grey[900] : Colors.grey[500],
                        offset: Offset(4.0, 4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                    BoxShadow(
                        color: Colors.white,//darkMode ? Colors.grey[800] : Colors.white,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                  ]),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      setState(() {
                        darkMode = true;
                      });
                    },
                    child: Text(
                      'Dark',
                      style: TextStyle(color: Colors.white),
                    ),
                    //color: Colors.black,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        darkMode = false;
                      });
                    },
                    child: Text(
                      'Ligth',
                      style: TextStyle(color: Colors.black),
                    ),
                    //color: Colors.white,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}