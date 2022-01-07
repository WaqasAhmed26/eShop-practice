import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Design extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Container(

          child: Stack(
            children: [


              Container(
                width: 250,
                height: 330,
                margin: EdgeInsets.only(left: 55,top: 160),
                child:Card(
                  elevation: 6.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(250),

                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 210,
                        child: Image.asset('assets/images/perfume.png'),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 15,left: 20),
                        child: Row(
                          children: [
                            Container(
                              child: Text(
                                '\$ 49.34',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 18,
                                  fontFamily: 'poppins',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.blue,
                        thickness: 2.0,
                      ),
                      Container(
                        child: ElevatedButton(
                          onPressed: (){
                            print('Add to cart');
                          },
                          child: Text(
                            'Add To Cart',
                            style: TextStyle(
                              fontFamily: 'poppins',

                            ),

                          ),

                        ),
                      ),

                    ],
                  ),
                ),
              ),

              Container(
                width: 35,
                height:290 ,
                margin: EdgeInsets.only(left: 40,top: 150),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: RotatedBox(
                  quarterTurns: -1,
                  child: Container(
                    margin: EdgeInsets.only(left: 23),
                    child: Text(
                      'Perfume',
                      style: TextStyle(
                        color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'poppins'
                      ),
                    ),
                  ),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
