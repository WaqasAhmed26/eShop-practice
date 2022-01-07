import 'package:flutter/material.dart';

class corvit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10,left: 5,right: 5),
                  height: 200,
                  child: Card(
                    elevation: 8.0,
                    child: Center(
                      child: Text(
                        'Hello Corvit',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w300
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20 ,left: 5,right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        child: Card(
                          elevation: 8.0,
                          color: Colors.deepPurpleAccent,
                          child: Center(
                            child: Text(
                              'B1',
                              style: TextStyle(
                                color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        child: Card(
                          elevation: 8.0,
                          color: Colors.amber,
                          child: Center(
                            child: Text(
                              'B2',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20 ,left: 5,right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        child: Card(
                          elevation: 8.0,
                          color: Colors.greenAccent,
                          child: Center(
                            child: Text(
                              'B3',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        child: Card(
                          elevation: 8.0,
                          color: Colors.lightBlueAccent,
                          child: Center(
                            child: Text(
                              'B4',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20 ,left: 5,right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        child: Card(
                          elevation: 8.0,
                          color: Colors.orangeAccent,
                          child: Center(
                            child: Text(
                              'B5',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        child: Card(
                          elevation: 8.0,
                          color: Colors.pinkAccent,
                          child: Center(
                            child: Text(
                              'B6',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
