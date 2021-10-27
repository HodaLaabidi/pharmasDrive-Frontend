/*import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/constants/urls_constants.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

/* Future save() async {
      var response = await http.post(Uri.parse(url),
          headers: {
            'Content-Type': 'application/json',
            "Access-Control-Allow-Origin": "*"
          },
          body: json.encode({'email': user.email, 'password': user.password}));
      print(response.body);
      if (response.statusCode == 200 &&
          response.body != null &&
          response.body != "") {
        print("test response body " + response.body);
        Get.offAllNamed(rootRoute);
      } else /*if (response.statusCode == 400)*/ {
        print("errors with status code = 400");
        showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: Text("Alert Dialog"),
            content: Text("Email or password not valid"),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
                child: Text(
                  "OK",
                  style: TextStyle(color: primaryColor),
                ),
              ),
            ],
          ),
        );
      }
    }   */

class AuthService {
  static final SESSION = FlutterSession();

  void login(String email, String password, BuildContext context) async {
    var response = await http.post(Uri.parse(baseUrl + loginUrl),
        headers: {
          'Content-Type': 'application/json',
          "Access-Control-Allow-Origin": "*"
        },
        body: json.encode({'email': email, 'password': password}));
    print(response.body);
    if (response.statusCode == 200 &&
        response.body != null &&
        response.body != "") {
      print("test response body " + response.body);
      Get.offAllNamed(rootRoute);
    } else /*if (response.statusCode == 400)*/ {
      print("errors with status code = 400");
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text("Alert Dialog"),
          content: Text("Email or password not valid"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(ctx).pop();
              },
              child: Text(
                "OK",
                style: TextStyle(color: primaryColor),
              ),
            ),
          ],
        ),
      );
    }
  }
}

class AuthService {
  final baseUrl = 'http://localhost:4000';
  // ignore: non_constant_identifier_names
  static final SESSION = FlutterSession();

  Future<dynamic> register(String email, String password) async {
    try {
      var res = await http.post('$baseUrl/auth/register', body: {
        'email': email,
        'password': password,
      });

      return res?.body;
    } finally {
      // done you can do something here
    }
  }

  Future<dynamic> login(String email, String password) async {
    try {
      var res = await http.post(
        '$baseUrl/auth/login',
        body: {
          'email': email,
          'password': password,
          'token': 'SdxIpaQp!81XS#QP5%w^cTCIV*DYr',
        },
      );

      return res?.body;
    } finally {
      // you can do somethig here
    }
  }

  static setToken(String token, String refreshToken) async {
    _AuthData data = _AuthData(token, refreshToken);
    await SESSION.set('tokens', data);
  }

  static Future<Map<String, dynamic>> getToken() async {
    return await SESSION.get('tokens');
  }

  static removeToken()async {
    await SESSION.prefs.clear();
  }
}

class _AuthData {
  String token, refreshToken, clientId;
  _AuthData(this.token, this.refreshToken, {this.clientId});

  // toJson
  // required by Session lib
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();

    data['token'] = token;
    data['refreshToken'] = refreshToken;
    data['clientId'] = clientId;
    return data;
  }
}  */
