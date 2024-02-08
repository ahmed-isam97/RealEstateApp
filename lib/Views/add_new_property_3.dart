import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state_app/Views/Filters.dart';
import 'package:sizer/sizer.dart';

class add_new_property_3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<String> days = List.generate(31,(index)=>(index+1).toString());
    List<String> month = List.generate(12,(index)=>(index+1).toString());
    List<String> years = List.generate(45,(index)=>(index+1980).toString());
    bool _value = false;
    int val = -1;
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xFF1F5753),
        title: Center(child: Text("Add new property")),

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
                            const EdgeInsets.fromLTRB(20.0, 0, 0, 10.0),
                            child: Text(
                              "Details",
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (newValue) { },
                          ),
                          Text(
                            "Room",
                            style: TextStyle(
                                color: Colors.grey[500]
                            ),
                          ),
                          SizedBox(width: 43.0.w),
                          Container(
                            height: 8.0.h,
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
                        ],
                      ),
                      SizedBox(height: 1.0.h),
                      Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (newValue) { },
                          ),
                          Text(
                            "Bathroom",
                            style: TextStyle(
                                color: Colors.grey[500]
                            ),
                          ),
                          SizedBox(width: 36.0.w),
                          Container(
                            height: 8.0.h,
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
                        ],
                      ),
                      SizedBox(height: 1.0.h),
                      Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (newValue) { },
                          ),
                          Text(
                            "Kitchen",
                            style: TextStyle(
                                color: Colors.grey[500]
                            ),
                          ),
                          SizedBox(width: 40.0.w),
                          Container(
                            height: 8.0.h,
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
                        ],
                      ),
                      SizedBox(height: 1.0.h),
                      Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (newValue) { },
                          ),
                          Text(
                            "Floor",
                            style: TextStyle(
                                color: Colors.grey[500]
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
                              "Furniture",
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 8.h,
                        child: DropdownButtonFormField<String>(
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 50.0),
                            child: const Text('Not furniture'),
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
                        "Other features",
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (newValue) { },
                    ),
                    Text(
                      "Basement",
                      style: TextStyle(
                          color: Colors.grey[500]
                      ),
                    ),
                    SizedBox(width: 20.0.w),
                    Checkbox(
                      value: false,
                      onChanged: (newValue) { },
                    ),
                    Text(
                      "Roof",
                      style: TextStyle(
                          color: Colors.grey[500]
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (newValue) { },
                    ),
                    Text(
                      "Parking",
                      style: TextStyle(
                          color: Colors.grey[500]
                      ),
                    ),
                    SizedBox(width: 24.5.w),
                    Checkbox(
                      value: false,
                      onChanged: (newValue) { },
                    ),
                    Text(
                      "Gym",
                      style: TextStyle(
                          color: Colors.grey[500]
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
                        "Built year",
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 8.h,
                  child: DropdownButtonFormField<String>(
                    hint: Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: const Text('2019'),
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
                SizedBox(height: 1.0.h),
                Row(
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
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
                      groupValue: val,
                      onChanged: (value) {
                        value = false;
                      },
                      activeColor: Colors.green,
                    ),
                    Text(
                      "New",
                      style: TextStyle(
                          color: Colors.grey[500]
                      ),
                    ),
                    SizedBox(width: 27.0.w),
                    Radio(
                      value: 1,
                      groupValue: val,
                      onChanged: (value) {
                        value = false;
                      },
                      activeColor: Colors.green,
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
                      groupValue: val,
                      onChanged: (value) {
                        value = false;
                      },
                      activeColor: Colors.green,
                    ),
                    Text(
                      "Never occupied",
                      style: TextStyle(
                          color: Colors.grey[500]
                      ),
                    ),
                    SizedBox(width: 8.0.w),
                    Radio(
                      value: 1,
                      groupValue: val,
                      onChanged: (value) {
                        value = false;
                      },
                      activeColor: Colors.green,
                    ),
                    Text(
                      "Been occupied",
                      style: TextStyle(
                          color: Colors.grey[500]
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 1.0.h),
                MaterialButton(
                    onPressed: () {
                      Get.to(Filters());
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    color: Color(0xFF1F5753),
                    child: SizedBox(
                      width: 33.w,
                      height: 5.h,
                      child: Center(
                        child: Text(
                          "Done",
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
