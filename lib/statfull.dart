import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


class Structure extends StatelessWidget {
  //const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stf_Structure(),
        );
  }
}



class Stf_Structure extends StatefulWidget {
  const Stf_Structure({Key? key}) : super(key: key);

  @override
  _Stf_StructureState createState() => _Stf_StructureState();
}

class _Stf_StructureState extends State<Stf_Structure> {
  late double width;
  late double height;
  late bool ShowButton=false;
  late bool ShowCartButton=false;

  late int cartCount;

  @override
  void initState(){

    cartCount=0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    primary: Colors.deepOrange,
                    shadowColor: Colors.deepOrange,
                    elevation: 6.0
                  ),
                  onPressed: (){
                    print('Add to cart');
                    ShowCartButton=true;
                    cartCount=1;
                  },
                  child: Text(
                    'Add To Cart',
                    style: TextStyle(
                      fontFamily: 'poppins',

                    ),

                  ),

                ),
              ),
              ShowCartButton?
              Row(
                children: [
                  Container(
                        child: InkWell(
                          onTap: (){

                            if(cartCount>0){
                              setState(() {
                                cartCount--;
                                if(cartCount==0){
                                  ShowCartButton=false;
                                }
                              });
                            }
                          },
                          child: Card(
                            elevation: 0.6,
                          child: Container(
                              padding: EdgeInsets.symmetric(vertical: width *0.02,horizontal: height*0.02 ),
                              child: Text('-')),
                          ),
                        ),
                      ),
                  Container(
                    child: Card(
                      child: Container(
                          padding: EdgeInsets.symmetric(vertical: width *0.02,horizontal: height*0.02 ),
                          child: Text(
                            cartCount.toString(),
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),),),
                    ),
                  ),
                  Container(
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          cartCount++;
                        });
                      },
                      child: Card(
                        elevation: 0.6,
                        child: Container(
                            padding: EdgeInsets.symmetric(vertical: width *0.02,horizontal: height*0.02 ),
                            child: Text('+')),
                      ),
                    ),
                  ),
                ],
              ):
              Container(
                child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      ShowButton=!ShowButton;
                    });
                  },
                  child: Text('Click To Show & Hide The Text'),
                ),
              ),
                ShowButton?Text('Hellow World'):Container(),
              Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(width*0.50),),
                    child:ClipRRect(
                      borderRadius: BorderRadius.circular(width*0.30),
                     child: Image.asset('assets/images/slider-bg4.jpg'),
                  ),
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: (){
                    Alert(
                      context: context,
                      type: AlertType.error,
                      title: "RFLUTTER ALERT",
                      desc: "Flutter is more awesome with RFlutter Alert.",
                      buttons: [
                        DialogButton(
                          child: Text(
                            "COOL",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          onPressed: () => Navigator.pop(context),
                          width: 120,
                        )
                      ],
                    ).show();
                  },
                  child: Text('Alert Button'),
                ),
              )
            ],

          ),
        ),
    );
  }
}



