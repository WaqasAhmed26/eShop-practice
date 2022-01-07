import 'package:flutter/material.dart';



class Design2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [

            Container(
              width: 200,
              height: 200,
              color: Colors.lightBlue,
              child: Text('Box1'),
            ),
            Container(
              margin: EdgeInsets.only(top: 300,left: 60),
              width: 150,
              height: 150,
              color: Colors.orangeAccent,
              child: Text('Box2'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.deepPurple,
              child: Text('Box3'),
            ),
          ],
        ),
      ),
    );
  }
}
