import 'package:flutter/material.dart';


class Responsive2 extends StatelessWidget {

  late double width;
  late double height;

  @override
  Widget build(BuildContext context) {

    width = MediaQuery.of(context).size.width;
    height= MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        child: Column(
          children: [

            Container(
              width: width ,
              height: height *0.3,
              margin: EdgeInsets.only(top: height*0.04),
              color: Colors.green,
            ),

            Container(
              child: Row(
                children: [
                  Container(
                    width: width*0.25,
                    height: height*0.66,
                    color: Colors.blue,
                  ),
                  Container(
                    width: width*0.75,
                    height: height*0.66,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
