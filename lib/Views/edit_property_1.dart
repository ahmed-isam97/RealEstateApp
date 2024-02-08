import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../tools/home_for_sale.dart';
import 'edit_property_2.dart';

class edit_property_1 extends StatelessWidget {

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
                        "Description",
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 8.h,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[500]),
                        hintText: 'Description',
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
                        "Category",
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 8.h,
                  child: DropdownButtonFormField<String>(
                    hint: Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: const Text('For rent'),
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
                        "Lease duration",
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(50.0, 0, 0, 10.0),
                      child: Text(
                        "Min      ",
                        style: TextStyle(
                            color: Colors.grey[500]
                        ),
                      ),
                    ),
                    Container(
                      height: 6.0.h,
                      width: 22.0.w,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            hintText: '2',
                            contentPadding: EdgeInsets.only(left: 35.0),
                            fillColor: Colors.white70),
                      ),
                    ),
                    SizedBox(width: 5.0.w),
                    Container(
                      width: 34.w,
                      child: DropdownButtonFormField<String>(
                        hint: const Text('   Year',
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
                      const EdgeInsets.fromLTRB(50.0, 0, 0, 10.0),
                      child: Text(
                        "Max     ",
                        style: TextStyle(
                            color: Colors.grey[500]
                        ),
                      ),
                    ),
                    Container(
                      height: 6.0.h,
                      width: 22.0.w,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            hintText: '4',
                            contentPadding: EdgeInsets.only(left: 35.0),
                            fillColor: Colors.white70),
                      ),
                    ),
                    SizedBox(width: 5.0.w),
                    Container(
                      width: 34.w,
                      child: DropdownButtonFormField<String>(
                        hint: const Text('   Year',
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
                        "Type",
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 8.h,
                  child: DropdownButtonFormField<String>(
                    hint: Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: const Text('Apartment'),
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
                        "Address",
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 40.w,
                      child: DropdownButtonFormField<String>(
                        hint: const Text('              City',
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
                    SizedBox(width: 5.0.w),
                    Container(
                      width: 40.w,
                      child: DropdownButtonFormField<String>(
                        hint: const Text('              Area',
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
                    Container(
                      width: 40.w,
                      child: DropdownButtonFormField<String>(
                        hint: const Text('              Block',
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
                    SizedBox(width: 5.0.w),
                    Container(
                      height: 6.5.h,
                      width: 40.0.w,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            hintText: '     Street',
                            contentPadding: EdgeInsets.only(left: 35.0),
                            fillColor: Colors.white70),
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
                        "Location",
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 8.0.h,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[500]),
                        hintText: 'http://Location httphttp://Location',
                        contentPadding: EdgeInsets.only(left: 50.0),
                        fillColor: Colors.white70),
                  ),
                ),
                SizedBox(height: 1.0.h),
                MaterialButton(
                  onPressed: () {
                    Get.to(edit_property_2());
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
