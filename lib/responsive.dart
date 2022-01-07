import 'package:flutter/material.dart';


class responsive extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: 400,
                  color: Colors.red,
                  child: Text('aadaa'),
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Expanded(
                      child:Container(
                        color: Colors.blue,
                        child: Text('\n\n'),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child:Container(
                        color: Colors.green,
                        child: Text(''),
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
