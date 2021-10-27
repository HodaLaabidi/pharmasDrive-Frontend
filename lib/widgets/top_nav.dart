import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/helpers/reponsiveness.dart';

import 'custom_text.dart';

AppBar topNavigationBar(BuildContext context,  GlobalKey<ScaffoldState> key) =>
AppBar(
  toolbarHeight : 80,
  leadingWidth: 250,
  
        leading: !ResponsiveWidget.isSmallScreen(context) ? Row(
          children: [
           
            SingleChildScrollView (
              
              child: Container(
                
                  height: 80,
                  width: 250,

                  color: Colors.white,
                  child: Padding(
                  
                    padding: const EdgeInsets.only( top: 5, bottom: 5),
                    child: Image.asset("assets/icons/logo.png", width: 80, height: 80,),
                  ),
                ),
            ),
            
          ],
        ) : IconButton(icon: Icon(Icons.menu , size: 40 , ), onPressed: (){
          key.currentState.openDrawer();
        }),
        title: Container(
         
          child: Row(
            children: [
             
              Expanded(child: Container()),
              IconButton(icon: Icon(Icons.settings, color: light,), onPressed: (){}),

              Stack(
                children: [
                  IconButton(icon: Icon(Icons.notifications, color: light.withOpacity(.7),), onPressed: (){}),
                  Positioned(
                    top: 7,
                    right: 7,
                    child: Container(
                      width: 12,
                      height: 12,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: active,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: light, width: 2)
                      ),
                    ),
                  )
                ],
              ),

            Container(
                      width: 1,
                      height: 22,
                      color: lightGrey,
                    ),
              SizedBox(width: 24,),
              CustomText(text: "Admin", color: Colors.white,),
              SizedBox(width: 16,),
              Container(
                  decoration: BoxDecoration(
                    color: active.withOpacity(.5),
                    borderRadius: BorderRadius.circular(30)
                  ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  padding: EdgeInsets.all(2),
                  margin: EdgeInsets.all(2),
                  child: CircleAvatar(
                    backgroundColor: light,
                    child: Icon(Icons.person_outline, color: dark,),
                    ),
                ),
              )
            ],
          ),
        ),
        iconTheme: IconThemeData(color: light),
        elevation: 2,
        backgroundColor:primaryColor,
      );