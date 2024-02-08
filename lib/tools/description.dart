import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state_app/getX/controller/check_controller.dart';
import 'package:sizer/sizer.dart';

import 'SideMenu.dart';
class description extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Category"),
                SizedBox(height: 1.5.h,),
                Text("Address"),
                SizedBox(height: 3.5.h,),
                Text("Location"),
                SizedBox(height: 1.5.h,),
                Text("Type"),
                SizedBox(height: 1.5.h,),
                Text("Lase duration"),
                SizedBox(height: 1.5.h,),
                Text("Listing date"),
                SizedBox(height: 1.5.h,),
                Text("Payment type"),
                SizedBox(height: 1.5.h,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("For rent",
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                SizedBox(height: 1.5.h,),
                Text('Khrtoum , Arkwiet'+'\n''block 45 . St.alsalam',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),SizedBox(height: 1.5.h,),

                Text("https:/google.maps.com",
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                SizedBox(height: 1.5.h,),
                Text("Apartment",
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                SizedBox(height: 1.5.h,),
                Text("3 months",
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                SizedBox(height: 1.5.h,),
                Text("14/6/2020",
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                SizedBox(height: 1.5.h,),
                Text("Monthly",
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
