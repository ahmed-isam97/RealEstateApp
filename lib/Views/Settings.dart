import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../tools/SideMenu.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SideMenu(),
      ),
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(
            color: Color(0xFF1F5753),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: Color(0xFF1F5753)),

      ),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 00.0),
          child: Center(
            child: Container(
              width: 100.w,
              height: 50.h,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Account settings",
                            style: TextStyle(
                              color: Color(0xFF1F5753),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 58.0),
                              child: Text(
                                "Phone number"
                              ),
                            ),
                            Text(
                                "+249990122091",
                              style: TextStyle(color: Colors.grey[500]),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 140.0),
                              child: Text(
                                  "Password"
                              ),
                            ),
                            Text(
                                "Change",
                              style: TextStyle(color: Colors.grey[500]),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 3.0.h),
                      Divider(
                        thickness: 1,
                        color: Colors.black12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0,bottom: 30.0),
                        child: Row(
                          children: [
                            Text(
                              "App settings",
                              style: TextStyle(
                                color: Color(0xFF1F5753),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 135.0),
                              child: Text(
                                  "Languages"
                              ),
                            ),
                            Text(
                                "English",
                              style: TextStyle(color: Colors.grey[500]),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 167.0),
                              child: Text(
                                  "Themes"
                              ),
                            ),
                            Text(
                                "Light",
                              style: TextStyle(color: Colors.grey[500]),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
