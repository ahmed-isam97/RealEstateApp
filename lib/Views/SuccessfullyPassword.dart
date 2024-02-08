import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class SuccessfullyPassword extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xFF1F5753),
      body: Container(
        width: 100.w,
        height: 100.h,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/transperntbackground.png"),
              fit: BoxFit.fill ,colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.77), BlendMode.darken),

            )
        ),
        child: Padding(

          padding: EdgeInsets.fromLTRB(60.0, 200.0, 60.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100.w,
                height: 33.h,
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 40, 20),
                        child: IconButton(
                          icon: const Icon(Icons.sentiment_very_satisfied_outlined , size: 50 ,color: Color(0xFF1F5753)),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                        ),
                      ),
                      SizedBox(height: 1.h,),
                      Text(
                        "Your password has been reset successfully",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),

            ],
          ),

        ),
      ),
    );
  }
}
