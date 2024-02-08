import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../tools/SideMenu.dart';

class Favorites extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SideMenu(),
      ),
      appBar: AppBar(
        title: Text(
          "Favorites",
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
        padding: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/1.2,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width/2,
                      height: MediaQuery.of(context).size.height/2.75,
                      child: Card(
                        child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5.0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Card(
                                    child: Icon(
                                        Icons.remove_shopping_cart_rounded,
                                      color: Color(0xFF1F5753),
                                    ),
                                  ),
                                ),
                                width: MediaQuery.of(context).size.width/1.3,
                                height: MediaQuery.of(context).size.height/5,
                                margin: EdgeInsets.only(top:10.0),
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/home.jpg"),
                                      fit: BoxFit.fill,colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.49), BlendMode.darken),
                                    )
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                                    child: Text(
                                        "Khrtoum,Arkweet,Block45"+"\n"+"st.Alsalam"
                                    ),
                                  ),
                                  Text(
                                      "Fore rent",
                                          style : TextStyle(
                                            color: Color(0xFF1F5753),
                                            fontWeight: FontWeight.bold
                                  )
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                                    child: Text(
                                        "2 floors, 4 rooms, 2 bathrooms."
                                    ),
                                  ),

                                ],
                              ),
                              SizedBox(height: 10.0),
                              Padding(
                                padding: const EdgeInsets.only(left: 200.0),
                                child: Text(
                                  "\$350/m",
                                    style : TextStyle(
                                        color: Color(0xFF1F5753),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0,
                                    ),
                                ),
                              ),
                            ]
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width/2,
                      height: MediaQuery.of(context).size.height/2.75,
                      child: Card(
                        child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5.0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Card(
                                    child: Icon(
                                      Icons.remove_shopping_cart_rounded,
                                      color: Color(0xFF1F5753),
                                    ),
                                  ),
                                ),
                                width: MediaQuery.of(context).size.width/1.3,
                                height: MediaQuery.of(context).size.height/5,
                                margin: EdgeInsets.only(top:10.0),
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/home.jpg"),
                                      fit: BoxFit.fill,colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.49), BlendMode.darken),
                                    )
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                                    child: Text(
                                        "Khrtoum,Arkweet,Block45"+"\n"+"st.Alsalam"
                                    ),
                                  ),
                                  Text(
                                      "Fore rent",
                                      style : TextStyle(
                                          color: Color(0xFF1F5753),
                                          fontWeight: FontWeight.bold
                                      )
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                                    child: Text(
                                        "2 floors, 4 rooms, 2 bathrooms."
                                    ),
                                  ),

                                ],
                              ),
                              SizedBox(height: 10.0),
                              Padding(
                                padding: const EdgeInsets.only(left: 200.0),
                                child: Text(
                                  "\$350/m",
                                  style : TextStyle(
                                    color: Color(0xFF1F5753),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ]
                        ),
                      ),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width/2,
                      height: MediaQuery.of(context).size.height/2.75,
                      child: Card(
                        child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5.0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Card(
                                    child: Icon(
                                      Icons.remove_shopping_cart_rounded,
                                      color: Color(0xFF1F5753),
                                    ),
                                  ),
                                ),
                                width: MediaQuery.of(context).size.width/1.3,
                                height: MediaQuery.of(context).size.height/5,
                                margin: EdgeInsets.only(top:10.0),
                                decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("assets/home.jpg"),
                                      fit: BoxFit.fill,colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.49), BlendMode.darken),
                                    )
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                                    child: Text(
                                        "Khrtoum,Arkweet,Block45"+"\n"+"st.Alsalam"
                                    ),
                                  ),
                                  Text(
                                      "Fore rent",
                                      style : TextStyle(
                                          color: Color(0xFF1F5753),
                                          fontWeight: FontWeight.bold
                                      )
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                                    child: Text(
                                        "2 floors, 4 rooms, 2 bathrooms."
                                    ),
                                  ),

                                ],
                              ),
                              SizedBox(height: 10.0),
                              Padding(
                                padding: const EdgeInsets.only(left: 200.0),
                                child: Text(
                                  "\$350/m",
                                  style : TextStyle(
                                    color: Color(0xFF1F5753),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ]
                        ),
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
