import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class stackpractice extends StatelessWidget {
  // const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                width: 40,
                height: 290,
                color: Colors.blue,
                child: Text(''),
              )
              // Container(
              //   width: 200,
              //   height: 200,
              //   color: Colors.deepOrange,
              //   child: Text('Box1'),
              // ),
              // Container(
              //   width: 150,
              //   height: 150,
              //   color: Colors.green,
              //   margin: EdgeInsets.only(left: 200),
              //   child: Text('Box2'),
              // ),
              // Container(
              //   width: 100,
              //   height: 100,
              //   color: Colors.blue,
              //   child: Text('Box3'),
              // ),
            ],
        ),
        ),
      ),
    );
  }
}


