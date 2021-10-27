import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/models/user.dart';
import 'package:flutter_web_dashboard/routing/routes.dart';
//import 'package:flutter_web_dashboard/services/auth_service.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    User user = User("", "");
    String url = "http://127.0.0.1:8080/api/v1/users/login";
    Future save() async {
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
    }

    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Form(
          key: _formKey,
          child: Container(
            margin: EdgeInsets.all(50),
            color: Colors.white,
            constraints: BoxConstraints(maxWidth: 550, maxHeight: 550),
            padding: EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 200,
                    ),
                    Container(
                      child: Image.asset(
                        "assets/icons/logo.png",
                        height: 120,
                        width: 120,
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  controller: TextEditingController(text: user.email),
                  onChanged: (val) {
                    user.email = val;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Empty Email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Email",
                    focusColor: primaryColor,
                    labelStyle: TextStyle(color: primaryColor),
                    hintText: "abc@domain.com",
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: TextEditingController(text: user.password),
                  onChanged: (val) {
                    user.password = val;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Empty Password';
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: primaryColor),
                    hintText: "123",
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            value: false,
                            checkColor: primaryColor,
                            onChanged: (value) {}),
                        CustomText(
                          text: "Remeber Me",
                        ),
                      ],
                    ),
                    CustomText(text: "Forgot password?", color: active)
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    save();
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                        color: active, borderRadius: BorderRadius.circular(5)),
                    alignment: Alignment.center,
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: CustomText(
                      text: "Sign in",
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(text: "Don't have an account "),
                  TextSpan(text: "Sign up! ", style: TextStyle(color: active))
                ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
