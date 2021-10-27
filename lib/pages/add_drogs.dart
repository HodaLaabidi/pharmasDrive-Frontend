import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/pages/medicaments.dart';
import 'package:flutter_web_dashboard/widgets/input_field.dart';
import 'package:flutter_web_dashboard/widgets/input_lines.dart';
import 'package:flutter_web_dashboard/widgets/upload_image.dart';

class AddDrogs extends StatelessWidget {
  AddDrogs({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Row(
          children: [
            Expanded(
              flex: 20,
              child: Scaffold(
                  backgroundColor: Colors.black12,
                  body: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, top: 100.0, right: 15.0),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 5),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 50, vertical: 15),
                                  child: Row(
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pushReplacement(
                                              context,
                                              PageRouteBuilder(
                                                pageBuilder: (context,
                                                        animation1,
                                                        animation2) =>
                                                    Medicaments(),
                                                transitionDuration:
                                                    Duration.zero,
                                              ));
                                        },
                                        child: Text("Liste des médicaments",
                                            style: TextStyle(
                                                color: primaryColor,
                                                fontFamily: "Montserrat",
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16)),
                                      ),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Icon(Icons.add, color: primaryColor),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      TextButton(
                                          onPressed: () {},
                                          child: Text("Ajouter un médicament",
                                              style: TextStyle(
                                                  fontFamily: "Montserrat",
                                                  fontStyle: FontStyle.normal,
                                                  color: primaryColor,
                                                  fontSize: 16))),
                                    ],
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8.0, left: 8, right: 8),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 10,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 50,
                                                    width: 150,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        "Name",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "Montserrat",
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 16),
                                                      ),
                                                    ),
                                                  ),
                                                  InputField(
                                                    label: "",
                                                    content: "",
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 50,
                                                    width: 150,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        "Image",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "Montserrat",
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 16),
                                                      ),
                                                    ),
                                                  ),
                                                  UploadImage(
                                                    label: "",
                                                    content:
                                                        "déposer le fichier image ici",
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 50,
                                                    width: 150,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        "Prix",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "Montserrat",
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 16),
                                                      ),
                                                    ),
                                                  ),
                                                  InputField(
                                                    label: "",
                                                    content: "",
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 50,
                                                    width: 150,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        "Remise",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "Montserrat",
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 16),
                                                      ),
                                                    ),
                                                  ),
                                                  InputField(
                                                    label: "",
                                                    content: "",
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 10,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  InputManyLine(
                                                    label: "Description",
                                                    content: "",
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 50,
                                                    width: 150,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        "Pharmacie",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "Montserrat",
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 16),
                                                      ),
                                                    ),
                                                  ),
                                                  InputField(
                                                    label: "",
                                                    content: "",
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 50,
                                                    width: 150,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        "Catégorie",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "Montserrat",
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 16),
                                                      ),
                                                    ),
                                                  ),
                                                  InputField(
                                                    label: "",
                                                    content: "",
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                                SizedBox(height: 20),
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 55, vertical: 8),
                                          child: Text(
                                            "Enregistrer",
                                          ),
                                        ),
                                        style: TextButton.styleFrom(
                                            primary: Colors.white,
                                            backgroundColor: primaryColor),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 25, vertical: 8),
                                          child: Text(
                                            "Cancel",
                                          ),
                                        ),
                                        style: TextButton.styleFrom(
                                            primary: Colors.black,
                                            backgroundColor: Color(0xFFe4e4e4)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 40),
                              ],
                            ),
                          )))),
            ),
          ],
        ),
      ),
    );
  }
}
