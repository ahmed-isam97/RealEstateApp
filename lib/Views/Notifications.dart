import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../tools/SideMenu.dart';

class Notifications extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SideMenu(),
      ),
      appBar: AppBar(
        title: Text(
          "Notifications",
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
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/1.2,
              child: ListView(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/5,
                    child: Card(
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/3.2,
                            height: MediaQuery.of(context).size.height/8,
                            margin: EdgeInsets.all(9.5),
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/home.jpg"),
                                  fit: BoxFit.fill,colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.49), BlendMode.darken),
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "June 18 , 2021",
                                      style: TextStyle(color: Colors.grey[500]),
                                    ),
                                    Text(
                                      "5:40 PM",
                                      style: TextStyle(color: Colors.grey[500]),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width/2.6,
                                  child: Divider(
                                    thickness: 1,
                                    color: Colors.black12,
                                  ),
                                ),
                                SizedBox(height: 5.0,),
                                Text(
                                  "Notifications content",
                                ),
                                Text(
                                  "Notifications content",
                                ),
                                Text(
                                  "Notifications content",
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/5,
                    child: Card(
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/3.2,
                            height: MediaQuery.of(context).size.height/8,
                            margin: EdgeInsets.all(9.5),
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/home.jpg"),
                                  fit: BoxFit.fill,colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.49), BlendMode.darken),
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "June 18 , 2021",
                                      style: TextStyle(color: Colors.grey[500]),
                                    ),
                                    Text(
                                      "5:40 PM",
                                      style: TextStyle(color: Colors.grey[500]),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width/2.6,
                                  child: Divider(
                                    thickness: 1,
                                    color: Colors.black12,
                                  ),
                                ),
                                SizedBox(height: 5.0,),
                                Text(
                                  "Notifications content",
                                ),
                                Text(
                                  "Notifications content",
                                ),
                                Text(
                                  "Notifications content",
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/5,
                    child: Card(
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/3.2,
                            height: MediaQuery.of(context).size.height/8,
                            margin: EdgeInsets.all(9.5),
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/home.jpg"),
                                  fit: BoxFit.fill,colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.49), BlendMode.darken),
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "June 18 , 2021",
                                      style: TextStyle(color: Colors.grey[500]),
                                    ),
                                    Text(
                                      "5:40 PM",
                                      style: TextStyle(color: Colors.grey[500]),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width/2.6,
                                  child: Divider(
                                    thickness: 1,
                                    color: Colors.black12,
                                  ),
                                ),
                                SizedBox(height: 5.0,),
                                Text(
                                  "Notifications content",
                                ),
                                Text(
                                  "Notifications content",
                                ),
                                Text(
                                  "Notifications content",
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/5,
                    child: Card(
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/3.2,
                            height: MediaQuery.of(context).size.height/8,
                            margin: EdgeInsets.all(9.5),
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/home.jpg"),
                                  fit: BoxFit.fill,colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.49), BlendMode.darken),
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "June 18 , 2021",
                                      style: TextStyle(color: Colors.grey[500]),
                                    ),
                                    Text(
                                      "5:40 PM",
                                      style: TextStyle(color: Colors.grey[500]),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width/2.6,
                                  child: Divider(
                                    thickness: 1,
                                    color: Colors.black12,
                                  ),
                                ),
                                SizedBox(height: 5.0,),
                                Text(
                                  "Notifications content",
                                ),
                                Text(
                                  "Notifications content",
                                ),
                                Text(
                                  "Notifications content",
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.height/5,
                    child: Card(
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width/3.2,
                            height: MediaQuery.of(context).size.height/8,
                            margin: EdgeInsets.all(9.5),
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/home.jpg"),
                                  fit: BoxFit.fill,colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.49), BlendMode.darken),
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "June 18 , 2021",
                                      style: TextStyle(color: Colors.grey[500]),
                                    ),
                                    Text(
                                      "5:40 PM",
                                      style: TextStyle(color: Colors.grey[500]),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width/2.6,
                                  child: Divider(
                                    thickness: 1,
                                    color: Colors.black12,
                                  ),
                                ),
                                SizedBox(height: 5.0,),
                                Text(
                                  "Notifications content",
                                ),
                                Text(
                                  "Notifications content",
                                ),
                                Text(
                                  "Notifications content",
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),

      ),
    );
  }
}
