import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state_app/getX/controller/check_controller.dart';
import 'package:sizer/sizer.dart';

import 'SideMenu.dart';
class specification extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 1.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Area"),
                SizedBox(height: 2.0.h,),
                Text("Details"),
                SizedBox(height: 4.0.h,),
                Text("Features"),
                SizedBox(height: 2.0.h,),
                Text("furniture"),
                SizedBox(height: 2.0.h,),
                Text("Build year"),
                SizedBox(height: 2.0.h,),
                Text("Condition"),
                SizedBox(height: 2.0.h,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("400 m2",
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                SizedBox(height: 1.5.h,),
                Text('2floors , 2rooms'+'\n''2bathrooms',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),SizedBox(height: 1.5.h,),

                Text('Basement,roof'+'\n''parking',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                SizedBox(height: 1.5.h,),
                Text("Furnished",
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                SizedBox(height: 1.5.h,),
                Text("2019",
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                SizedBox(height: 1.5.h,),
                Text("New , Been occupied",
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                SizedBox(height: 1.5.h,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
