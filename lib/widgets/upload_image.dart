import 'package:flutter/material.dart';

class UploadImage extends StatelessWidget {
  final String label;
  final String content;

  UploadImage({this.label, this.content});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Column(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$label",
                  textAlign: TextAlign.left,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3.7,
                  color: Colors.white,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF21ba19),
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        prefixIcon: Center(
                          child: Column(
                            children: [
                              Icon(Icons.cloud_upload, size: 40),
                              Text("Déposer le fichier image ici",
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ))
                            ],
                          ),
                        ),
                        hintText: "$content",
                        contentPadding: EdgeInsets.symmetric(vertical: 90),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF21ba19),
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        fillColor: Color(0xFF21ba19),
                        hintStyle: TextStyle(
                          fontFamily: "Montserrat",
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        )),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
