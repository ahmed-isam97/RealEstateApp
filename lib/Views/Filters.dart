import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state_app/Views/MY_Propraties.dart';
import 'package:sizer/sizer.dart';
import 'homeScreen.dart';

class Filters extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<String> days = List.generate(31,(index)=>(index+1).toString());
    List<String> month = List.generate(12,(index)=>(index+1).toString());
    List<String> years = List.generate(45,(index)=>(index+1980).toString());
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xFF1F5753),
        title: Center(child: Text("Filters")),

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
                        "Sort by",
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: 1,
                      groupValue: 1,
                      onChanged: (value) {
                        value = false;
                      },
                      activeColor: Colors.blue,
                    ),
                    Text(
                      "Price",
                      style: TextStyle(
                          color: Colors.grey[500]
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Radio(
                      value: 1,
                      groupValue: 1,
                      onChanged: (value) {
                        value = false;
                      },
                      activeColor: Colors.blue,
                    ),
                    Text(
                      "Area",
                      style: TextStyle(
                          color: Colors.grey[500]
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 1,
                  color: Colors.black12,
                ),
                SizedBox(height: 1.0.h,),
                Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
                      child: Text(
                        "Category           ",
                      ),
                    ),
                    Container(
                      width: 54.w,
                      child: DropdownButtonFormField<String>(
                        hint: const Text('     For rent'),
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
                SizedBox(height: 1.0.h,),
                Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
                      child: Text(
                        "Type                  ",
                      ),
                    ),
                    Container(
                      width: 54.w,
                      child: DropdownButtonFormField<String>(
                        hint: const Text('     Apartment'),
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
                SizedBox(height: 1.0.h,),
                Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
                      child: Text(
                        "Furniture           ",
                      ),
                    ),
                    Container(
                      width: 54.w,
                      child: DropdownButtonFormField<String>(
                        hint: const Text('     Furnitured'),
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
                SizedBox(height: 2.0.h,),
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 41.w,
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
                    SizedBox(width: 6.0.w),
                    Container(
                      width: 41.w,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 41.w,
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
                    SizedBox(width: 6.0.w),
                    Container(
                      height: 6.5.h,
                      width: 41.w,
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
                SizedBox(height: 2.0.h,),
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 6.5.h,
                      width: 41.w,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            hintText: '     Min',
                            contentPadding: EdgeInsets.only(left: 35.0),
                            fillColor: Colors.white70),
                      ),
                    ),
                    SizedBox(width: 6.0.w),
                    Container(
                      height: 6.5.h,
                      width: 41.w,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            hintText: '     Max',
                            contentPadding: EdgeInsets.only(left: 35.0),
                            fillColor: Colors.white70),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.0.h,),
                Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(30.0, 0, 0, 0.0),
                      child: Text(
                        "Area  ",
                      ),
                    ),
                    Text(
                      "(Unit)",
                      style: TextStyle(
                        color: Colors.grey[500]
                      ),
                    ),
                  ],
                ),
                Slider(
                  value: 1,
                  onChanged: (value) {},
                  min: 0,
                  max: 10,
                  activeColor: Color(0xFF1F5753),
                  inactiveColor: Colors.grey[500],
                  label: 1.round().toString(),
                  divisions: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(30.0, 0, 0, 0.0),
                      child: Text(
                        "300                                                             ",
                      ),
                    ),
                    Text(
                      "800",
                    ),
                  ],
                ),
                SizedBox(height: 2.0.h,),
                Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(30.0, 0, 0, 0.0),
                      child: Text(
                        "Lease duration",
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Radio(
                      value: 1,
                      groupValue: 1,
                      onChanged: (value) {
                        value = false;
                      },
                      activeColor: Colors.blue,
                    ),
                    Text(
                      "Day",
                      style: TextStyle(
                          color: Colors.grey[500]
                      ),
                    ),
                    Radio(
                      value: 1,
                      groupValue: 1,
                      onChanged: (value) {
                        value = false;
                      },
                      activeColor: Colors.blue,
                    ),
                    Text(
                      "Week",
                      style: TextStyle(
                          color: Colors.grey[500]
                      ),
                    ),
                    Radio(
                      value: 1,
                      groupValue: 1,
                      onChanged: (value) {
                        value = false;
                      },
                      activeColor: Colors.blue,
                    ),
                    Text(
                      "Month",
                      style: TextStyle(
                          color: Colors.grey[500]
                      ),
                    ),
                    Radio(
                      value: 1,
                      groupValue: 1,
                      onChanged: (value) {
                        value = false;
                      },
                      activeColor: Colors.blue,
                    ),
                    Text(
                      "Year",
                      style: TextStyle(
                          color: Colors.grey[500]
                      ),
                    ),
                  ],
                ),
                Slider(
                  value: 1,
                  onChanged: (value) {},
                  min: 0,
                  max: 10,
                  activeColor: Color(0xFF1F5753),
                  inactiveColor: Colors.grey[500],
                  label: 1.round().toString(),
                  divisions: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(30.0, 0, 0, 0.0),
                      child: Text(
                        "1                                                                   ",
                      ),
                    ),
                    Text(
                      "12",
                    ),
                  ],
                ),
                SizedBox(height: 2.0.h,),
                Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(30.0, 0, 0, 0.0),
                      child: Text(
                        "Built year",
                      ),
                    ),
                  ],
                ),
                Slider(
                  value: 1,
                  onChanged: (value) {},
                  min: 0,
                  max: 10,
                  activeColor: Color(0xFF1F5753),
                  inactiveColor: Colors.grey[500],
                  label: 1.round().toString(),
                  divisions: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(30.0, 0, 0, 0.0),
                      child: Text(
                        "1998                                                        ",
                      ),
                    ),
                    Text(
                      "2021",
                    ),
                  ],
                ),
                SizedBox(height: 2.0.h,),
                Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(30.0, 0, 0, 0.0),
                      child: Text(
                        "Property condition",
                      ),
                    ),
                  ],
                ),
        Row(
          children: [
            Radio(
              value: 1,
              groupValue: 1,
              onChanged: (value) {
                value = false;
              },
              activeColor: Colors.blue,
            ),
            Text(
              "New                  ",
              style: TextStyle(
                  color: Colors.grey[500]
              ),
            ),
            Radio(
              value: 1,
              groupValue: 1,
              onChanged: (value) {
                value = false;
              },
              activeColor: Colors.blue,
            ),
            Text(
              "Not new",
              style: TextStyle(
                  color: Colors.grey[500]
              ),
            ),
            ],
        ),
                Row(
                  children: [
                    Radio(
                      value: 1,
                      groupValue: 1,
                      onChanged: (value) {
                        value = false;
                      },
                      activeColor: Colors.blue,
                    ),
                    Text(
                      "Refurbished",
                      style: TextStyle(
                          color: Colors.grey[500]
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.0.h,),
                Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(30.0, 0, 0, 0.0),
                      child: Text(
                        "Advaced Payment",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.0.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 6.5.h,
                      width: 41.w,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            hintText: '     Min',
                            contentPadding: EdgeInsets.only(left: 35.0),
                            fillColor: Colors.white70),
                      ),
                    ),
                    SizedBox(width: 6.0.w),
                    Container(
                      height: 6.5.h,
                      width: 41.w,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            hintText: '     Max',
                            contentPadding: EdgeInsets.only(left: 35.0),
                            fillColor: Colors.white70),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.0.h,),
                Divider(
                  thickness: 1,
                  color: Colors.black12,
                ),
        SizedBox(height: 1.0.h,),
        Row(
          children: [
            Padding(
              padding:
              const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
              child: Text(
                "Floors                            ",
              ),
            ),
            Container(
              width: 30.w,
              child: DropdownButtonFormField<String>(
                hint: const Text('     1'),
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
                SizedBox(height: 1.0.h,),
                Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
                      child: Text(
                        "Rooms                          ",
                      ),
                    ),
                    Container(
                      width: 30.w,
                      child: DropdownButtonFormField<String>(
                        hint: const Text('     4'),
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
                SizedBox(height: 1.0.h,),
                Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
                      child: Text(
                        "Bathroom                     ",
                      ),
                    ),
                    Container(
                      width: 30.w,
                      child: DropdownButtonFormField<String>(
                        hint: const Text('     2'),
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
                SizedBox(height: 1.0.h,),
                Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
                      child: Text(
                        "Kitchen                         ",
                      ),
                    ),
                    Container(
                      width: 30.w,
                      child: DropdownButtonFormField<String>(
                        hint: const Text('     1'),
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
                SizedBox(height: 2.0.h),
                MaterialButton(
                  onPressed: () {
                    Get.to(MY_Propraties());
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  color: Color(0xFF1F5753),
                  child: SizedBox(
                    width: 33.w,
                    height: 5.h,
                    child: Center(
                      child: Text(
                        "Apply",
                        style: TextStyle(color: Colors.white, fontSize: 15.0.sp),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
