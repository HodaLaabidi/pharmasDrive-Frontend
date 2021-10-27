import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';

import 'ParamsEquipeNewMembre.dart';

class ParamEquipe extends StatelessWidget {
  const ParamEquipe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(children: [
                Expanded(
                  flex: 20,
                  child: Scaffold(
                    body: SingleChildScrollView(
                        child: Padding(
                      padding: const EdgeInsets.only(
                        top: 100,
                        left: 20,
                        right: 20,
                        bottom: 20,
                      ),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            border: Border.all(color: bgColor),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 50, bottom: 8),
                                  child: Text("Membres"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 8, bottom: 8),
                                  child: Text(
                                      "Gérez qui a accès à ou ajoutez de nouveaux membres à l’équipe."),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, top: 8, bottom: 8),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.add_circle_outline),
                                        color: primaryColor,
                                        onPressed: () {},
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pushReplacement(
                                              context,
                                              PageRouteBuilder(
                                                pageBuilder: (context,
                                                        animation1,
                                                        animation2) =>
                                                    ParamsEquipeNewMembre(),
                                                transitionDuration:
                                                    Duration.zero,
                                              ),
                                            );
                                          },
                                          child: Text(" Ajouter membre",
                                              style: TextStyle(
                                                  color: primaryColor,
                                                  fontFamily: "Montserrat",
                                                  fontStyle: FontStyle.normal,
                                                
                                                  fontSize: 16))),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                      ),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black38,
                                            blurRadius: 7,
                                            offset: Offset(7, 8))
                                      ]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                "assets/images/profile.jpg")),
                                        Row(children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 11.0,
                                                              top: 12,
                                                              right: 11,
                                                              bottom: 8),
                                                      child: Text("user name",
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Montserrat',
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 12,
                                                          )),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 11.0,
                                                              top: 12,
                                                              right: 11,
                                                              bottom: 8),
                                                      child: Text("Owner",
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Montserrat',
                                                            color: primaryColor,
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 12,
                                                          )),
                                                    )
                                                  ],
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 11.0),
                                                  child:
                                                      Text("user@tledger.tech",
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Montserrat',
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 12,
                                                          )),
                                                )
                                              ],
                                            ),
                                          ),
                                        ])
                                      ],
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    )),
                  ),
                ),
              ]))),
    );
  }
}
