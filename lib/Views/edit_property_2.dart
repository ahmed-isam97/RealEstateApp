import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../tools/home_for_sale.dart';
import 'edit_property_3.dart';

class edit_property_2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<String> days = List.generate(31,(index)=>(index+1).toString());
    List<String> month = List.generate(12,(index)=>(index+1).toString());
    List<String> years = List.generate(45,(index)=>(index+1980).toString());
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xFF1F5753),
        title: Center(child: Text("Edit property")),

      ),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
                      child: Text(
                        "Area",
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 80.0.w,
                      height: 8.h,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            hintText: 'Size',
                            contentPadding: EdgeInsets.only(left: 50.0),
                            fillColor: Colors.white70),
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(10.0, 0, 0, 10.0),
                      child: Text(
                        "M2",
                        style: TextStyle(
                            color: Colors.grey[500]
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 1.0.h),
                Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
                      child: Text(
                        "Property Images",
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 8.0.h,
                  child: TextField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.attachment, size : 25),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[500]),
                        hintText: 'Attach image',
                        contentPadding: EdgeInsets.only(left: 50.0),
                        fillColor: Colors.white70),


                  ),

                ),
                SizedBox(height: 1.0.h),
                Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
                      child: Text(
                        "Property Type",
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 8.h,
                  child: DropdownButtonFormField<String>(
                    hint: Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: const Text('Monthly'),
                    ),

                    decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(12))),
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(12)),
                            borderSide:
                            BorderSide(color: Color(0xff444444))),
                        fillColor: Colors.white70,
                        filled: true
                    ),

                    items: <String>['Male', 'Female']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        onTap: () {},
                        child: Text(value),
                      );
                    }).toList(),

                    // value:,

                    onChanged: (_) {},
                  ),
                ),
                SizedBox(height: 1.0.h),
                Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
                      child: Text(
                        "Price",
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 7.0.h,
                      width: 55.w,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            hintText: 'Price',
                            contentPadding: EdgeInsets.only(left: 35.0),
                            fillColor: Colors.white70),
                      ),
                    ),
                    SizedBox(width: 5.0.w),
                    Container(
                      width: 25.w,
                      child: DropdownButtonFormField<String>(
                        hint: const Text('   USD',
                          style: TextStyle(
                              color: Colors.grey
                          ),),
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                                borderSide:
                                BorderSide(color: Color(0xff444444))),
                            fillColor: Colors.white70,
                            filled: true
                        ),

                        items: years
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            onTap: () {},
                            child: Text(value),
                          );
                        }).toList(),

                        // value:,

                        onChanged: (_) {},
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 1.0.h),
                Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
                      child: Text(
                        "Status",
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 8.h,
                  child: DropdownButtonFormField<String>(
                    hint: Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: const Text('Will be available on'),
                    ),

                    decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(12))),
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(12)),
                            borderSide:
                            BorderSide(color: Color(0xff444444))),
                        fillColor: Colors.white70,
                        filled: true
                    ),

                    items: <String>['Male', 'Female']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        onTap: () {},
                        child: Text(value),
                      );
                    }).toList(),

                    // value:,

                    onChanged: (_) {},
                  ),
                ),
                SizedBox(height: 1.0.h),
                Row(
                  children: [
                    Container(
                      width: 25.w,
                      child: DropdownButtonFormField<String>(
                        hint: const Text('  Day'),
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(right:12),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                                borderSide:
                                BorderSide(color: Color(0xff444444))),
                            fillColor: Colors.white70,
                            filled: true
                        ),

                        items: days
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            onTap: () {},
                            child: Text(value),
                          );
                        }).toList(),

                        // value:,

                        onChanged: (_) {},
                      ),
                    ),
                    SizedBox(width: 0.5.h),
                    Container(
                      width: 36.w,
                      child: DropdownButtonFormField<String>(
                        hint: const Text('   Month'),
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                                borderSide:
                                BorderSide(color: Color(0xff444444))),
                            fillColor: Colors.white70,
                            filled: true
                        ),

                        items: month
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            onTap: () {},
                            child: Text(value),
                          );
                        }).toList(),

                        // value:,

                        onChanged: (_) {},
                      ),
                    ),
                    SizedBox(width: 1.0.w),
                    Container(
                      width: 25.w,
                      child: DropdownButtonFormField<String>(
                        hint: const Text('   Years'),
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                                borderSide:
                                BorderSide(color: Color(0xff444444))),
                            fillColor: Colors.white70,
                            filled: true
                        ),

                        items: years
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            onTap: () {},
                            child: Text(value),
                          );
                        }).toList(),

                        // value:,

                        onChanged: (_) {},
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 1.0.h),
                Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
                      child: Text(
                        "Advanced payment",
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 7.0.h,
                      width: 57.0.w,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            hintText: 'Price',
                            contentPadding: EdgeInsets.only(left: 35.0),
                            fillColor: Colors.white70),
                      ),
                    ),
                    SizedBox(width: 3.0.w),
                    Container(
                      width: 28.w,
                      child: DropdownButtonFormField<String>(
                        hint: const Text('   USD',
                          style: TextStyle(
                              color: Colors.grey
                          ),),
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                                borderSide:
                                BorderSide(color: Color(0xff444444))),
                            fillColor: Colors.white70,
                            filled: true
                        ),

                        items: years
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            onTap: () {},
                            child: Text(value),
                          );
                        }).toList(),

                        // value:,

                        onChanged: (_) {},
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.0.h),
                MaterialButton(
                  onPressed: () {
                    Get.to(edit_property_3());
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  color: Color(0xFF1F5753),
                  child: SizedBox(
                    width: 33.w,
                    height: 5.h,
                    child: Center(
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.white, fontSize: 15.0.sp),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
