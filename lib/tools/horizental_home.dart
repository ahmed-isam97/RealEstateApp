import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class horizental_home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Column(
              children: [
                Container(
                  padding: EdgeInsets.all(5.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Card(
                      child: Icon(
                        Icons.favorite,
                        color: Color(0xFF1F5753),
                      ),
                    ),
                  ),
                  width: 92.w,
                  height: 20.h,
                  margin: EdgeInsets.only(top: 5.0),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/home.jpg"),
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.49),
                            BlendMode.darken),
                      )
                  ),
                ),
              ]
          ),
          SizedBox(width: 1.w,),
          Column(
              children: [
                Container(
                  padding: EdgeInsets.all(5.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Card(
                      child: Icon(
                        Icons.favorite,
                        color: Color(0xFF1F5753),
                      ),
                    ),
                  ),
                  width: 92.w,
                  height: 20.h,
                  margin: EdgeInsets.only(top: 5.0),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/home.jpg"),
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.49),
                            BlendMode.darken),
                      )
                  ),
                ),
              ]
          ),
          SizedBox(width: 1.w,),
          Column(
              children: [
                Container(
                  padding: EdgeInsets.all(5.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Card(
                      child: Icon(
                        Icons.favorite,
                        color: Color(0xFF1F5753),
                      ),
                    ),
                  ),
                  width: 92.w,
                  height: 20.h,
                  margin: EdgeInsets.only(top: 5.0),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/home.jpg"),
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.49),
                            BlendMode.darken),
                      )
                  ),
                ),
              ]
          ),
        ],
      ),
    );
  }
}

