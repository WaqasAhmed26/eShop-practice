import 'dart:convert';
import 'package:classprac/statfull.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class list extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return listful();
  }
}

class listful extends StatefulWidget {
  //const listful({Key? key}) : super(key: key);

  @override
  _listfulState createState() => _listfulState();
}

class _listfulState extends State<listful> {
  late double width;
  late double height;
  int productCount = 0;

  List<String> productNames= [];
  List<String> productPrice = [];
  List<String> productImages = [];
  List<String> productCategories=[];

  Future getProducts() async {
    String url = 'https://test.analogenterprises.com/corvit/GetData.php';
    http.Response response =await http.get(Uri.parse(url));

   // print(jsonDecode(response.body));
    
    var json = jsonDecode(response.body);
    List<dynamic> jsonObject=List.from(json);
   // print(jsonObject.length);
    productCount = jsonObject.length;

    for(int i=0;i < productCount;i++){
      productNames.add(jsonObject[i]["productName"]);
      productPrice.add(jsonObject[i]["productPrice"]);
      productImages.add(jsonObject[i]["productImage"]);
      productCategories.add(jsonObject[i]["productDescription"]);
    }

    setState(() {
      print('data loaded');
    });

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProducts();
  }
  @override
  Widget build(BuildContext context) {


    width = MediaQuery.of(context).size.width;
    height= MediaQuery.of(context).size.height;


    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Column(
          children: [
            Container(
              width: width,
              height: height*0.3,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent.withOpacity(0.4),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(height* 0.3),
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(top: height*0.04,left: width*0.05),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'HI Corvit',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Optimizing the mobile cart and checkout experience is more important',
                      style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: height*0.015),
                      width: width *0.7,
                      height: height* 0.055,
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.search),
                          labelText: 'Search Products',
                          labelStyle: TextStyle(
                              fontFamily: 'myfont'
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(width*0.25)
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: width*0.8),


                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Structure() ));
                        },
                        child: Card(
                          elevation: 6.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(width*0.03),
                          ),
                          color: Colors.lightBlueAccent,
                          child: Container(
                            padding: EdgeInsets.all(width*0.01),
                            child: Icon(
                              Icons.shopping_cart,
                              size: width*0.08,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  width: width*0.8,
                  height: height *0.7,
                  child: ListView.builder(
                    itemCount: productNames.length,
                    itemBuilder: (context, index){
                      return  Container(
                        margin: EdgeInsets.only(bottom: height*0.02),
                        child: Stack(
                          children: [
                            Container(
                              width: width*0.6,
                              height: height*0.4,
                              margin: EdgeInsets.only(left: width*0.06,top: height*0.005),
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
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      height: 210,
                                      child: Image.network(productImages[index]),
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(top: 15,left: 20),
                                      child: Row(
                                        children: [
                                          Container(
                                            child: Text(
                                              '\$ '+productPrice[index],
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
                              width: width*0.09,
                              height:height *0.35 ,
                              margin: EdgeInsets.only(left: width*0.02),
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
                                    productNames[index],
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
                      );

                    },
                  ),
                ),
                Container(
                  width: width*0.2,
                  height: height *0.7,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.6),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(width*0.08),
                    ),
                  ),
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: productCategories.length,
                      itemBuilder: (context,index){
                        return Container(
                          margin: EdgeInsets.only(top: height*0.03,left: height*0.02),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      productCategories[index],
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 17,
                                      ),
                                    ),

                                  ],
                                ),

                              ),

                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}


