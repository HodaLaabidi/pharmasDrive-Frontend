import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final Color topColor;
  final bool isActive;
  final Function onTap;

  const InfoCard(
      {Key key,
      @required this.title,
      @required this.value,
      this.isActive = false,
      @required this.onTap,
      this.topColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 1),
                  color: lightGrey.withOpacity(.1),
                  blurRadius: 1)
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
            
              
              Container(
                width: double.infinity,
                 decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft/20,
              end: Alignment.bottomRight,
              colors: [topColor,Colors.white70 ])),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(children: [
                        TextSpan(
                            text: "$title\n",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              
                                fontSize: 20,
                                color: Colors.white)),
                        TextSpan(
                            text: "$value",
                            style: TextStyle(
                               fontWeight: FontWeight.bold,
                                fontSize: 40, color: Colors.white)),
                      ])),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
