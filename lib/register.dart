import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Register extends StatelessWidget {
  //const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Register_STF() ,
    );
  }
}
class Register_STF extends StatefulWidget {
  const Register_STF({Key? key}) : super(key: key);

  @override
  _Register_STFState createState() => _Register_STFState();
}

class _Register_STFState extends State<Register_STF> {

  late double width;
  late double height;


  Future sendRegisterData() async{
    String url = 'https://test.analogenterprises.com/corvit/Register.php';

    var map =Map<String,dynamic>();
    map['email'] = 'ali@gamil.com';
    map['password']='123456789';
    map['name']='ali';
    http.Response response = await http.post(Uri.parse(url),body: map);
    print(jsonDecode(response.body));

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sendRegisterData();
  }
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height= MediaQuery.of(context).size.height;

    return Container();
  }
}
