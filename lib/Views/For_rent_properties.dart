import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../tools/Details.dart';
import 'edit_property_1.dart';

class For_rent_properties extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        InkWell(
          onTap: () {
            Get.to(Details());
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5.0),
            child: Card(
              child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: InkWell(
                          onTap: () {
                            Get.to(edit_property_1());
                          },
                          child: Card(
                            child: Icon(
                              Icons.edit,
                              color: Color(0xFF1F5753),
                            ),
                          ),
                        ),
                      ),
                      width: 65.w,
                      height: 18.h,
                      margin: EdgeInsets.only(top: 1.0.h),
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
                    SizedBox(height: 1.0.h),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              30.0, 0.0, 30.0, 0.0),
                          child: Text(
                              "Khrtoum,Arkweet,Block45" + "\n" + "st.Alsalam"
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.0.h),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(
                              30.0, 0.0, 30.0, 0.0),
                          child: Text(
                            "2 floors, 4 rooms, 2 bathrooms.",
                            style: TextStyle(
                                color: Colors.grey[500]
                            ),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 1.0.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Remove",
                          style: TextStyle(
                              color: Colors.grey[500]
                          ),
                        ),
                        Text(
                          "\$350/m",
                          style: TextStyle(
                            color: Color(0xFF1F5753),
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ]
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
          child: Card(
            child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Card(
                        child: Icon(
                          Icons.edit,
                          color: Color(0xFF1F5753),
                        ),
                      ),
                    ),
                    width: 65.w,
                    height: 18.h,
                    margin: EdgeInsets.only(top: 1.0.h),
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
                  SizedBox(height: 1.0.h),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(
                            30.0, 0.0, 30.0, 0.0),
                        child: Text(
                            "Khrtoum,Arkweet,Block45" + "\n" + "st.Alsalam"
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.0.h),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(
                            30.0, 0.0, 30.0, 0.0),
                        child: Text(
                          "2 floors, 4 rooms, 2 bathrooms.",
                          style: TextStyle(
                              color: Colors.grey[500]
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 1.0.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Remove",
                        style: TextStyle(
                            color: Colors.grey[500]
                        ),
                      ),
                      Text(
                        "\$350/m",
                        style: TextStyle(
                          color: Color(0xFF1F5753),
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ]
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
          child: Card(
            child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Card(
                        child: Icon(
                          Icons.edit,
                          color: Color(0xFF1F5753),
                        ),
                      ),
                    ),
                    width: 65.w,
                    height: 18.h,
                    margin: EdgeInsets.only(top: 1.0.h),
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
                  SizedBox(height: 1.0.h),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(
                            30.0, 0.0, 30.0, 0.0),
                        child: Text(
                            "Khrtoum,Arkweet,Block45" + "\n" + "st.Alsalam"
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.0.h),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(
                            30.0, 0.0, 30.0, 0.0),
                        child: Text(
                          "2 floors, 4 rooms, 2 bathrooms.",
                          style: TextStyle(
                              color: Colors.grey[500]
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 1.0.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Remove",
                        style: TextStyle(
                            color: Colors.grey[500]
                        ),
                      ),
                      Text(
                        "\$350/m",
                        style: TextStyle(
                          color: Color(0xFF1F5753),
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ]
            ),
          ),
        ),
      ],
    );
  }
}

