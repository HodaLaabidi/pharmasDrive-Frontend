
import 'package:flutter/material.dart';

class ParamsEquipeNewMembre extends StatefulWidget {
  @override
  _ParamsEquipeNewMembre createState() => _ParamsEquipeNewMembre();
}

class _ParamsEquipeNewMembre extends State<ParamsEquipeNewMembre> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Row(
          children: [
            
            Expanded(
         
              child: Scaffold(
               
                body: Padding(
                  padding: const EdgeInsets.only(top: 100 , left: 8, right: 8, bottom: 8),
                  child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 20, top: 50, bottom: 8),
                          child: Text("Adresse email", ),
                        ),
                        Container(
                            width: 400,
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
                                      blurRadius: 2,
                                      offset: Offset(1, 2))
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Text("Contact@tledger.tech",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14)),
                            )),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 20, top: 50, bottom: 8),
                          child: Text("Mot de passe",),
                        ),
                        Container(
                            width: 400,
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
                                      blurRadius: 2,
                                      offset: Offset(1, 2))
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Text("PharamsDriveUser",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14)),
                            )),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 20, top: 50, bottom: 8),
                          child: Text("Autorisations",),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                              width: MediaQuery.of(context).size.width,
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
                                        blurRadius: 2,
                                        offset: Offset(1, 2))
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    Radio(
                                      value: 1,
                                      groupValue: _value,
                                      onChanged: (int value) {
                                        setState(() {
                                          _value = value;
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Accès administrateur",
                                        style: TextStyle(
                                            fontFamily: "Montserrat",
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14)),
                                  ],
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                              width: MediaQuery.of(context).size.width,
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
                                        blurRadius: 2,
                                        offset: Offset(1, 2))
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  children: [
                                    Radio(
                                      value: 2,
                                      groupValue: _value,
                                      onChanged: (int value) {
                                        setState(() {
                                           _value = value;
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Accès lecture",
                                        style: TextStyle(
                                            fontFamily: "Montserrat",
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14)),
                                  ],
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}