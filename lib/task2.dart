import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class task2 extends StatelessWidget {
  // const  ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            child: SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment. spaceBetween,
                children:[
                  Container(
                    height: 120,
                    width: 120,
                    child: Card(
                      child: SvgPicture.asset('assets/svg/favorite.svg'),
                    )
                  ),
                  Container(
                      height: 120,
                      width: 120,
                      child: Card(
                        child: SvgPicture.asset('assets/svg/favorite.svg'),
                      )
                  ),
                  Container(
                      height: 120,
                      width: 120,
                      child: Card(
                        child: SvgPicture.asset('assets/svg/favorite.svg'),
                      )
                  ),
                  Container(
                      height: 120,
                      width: 120,
                      child: Card(
                        child: SvgPicture.asset('assets/svg/favorite.svg'),
                      )
                  ),
                  Container(
                      height: 120,
                      width: 120,
                      child: Card(
                        child: SvgPicture.asset('assets/svg/favorite.svg'),
                      )
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
