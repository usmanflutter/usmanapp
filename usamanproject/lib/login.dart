// ignore_for_file: unused_field, unused_element, unnecessary_statements, must_call_super

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:usamanproject/routes.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _name = TextEditingController();
  TextEditingController pass = TextEditingController();
   TextEditingController _email= TextEditingController();
  void initState() {}
  String text = "";
  bool changeButton = false;
  bool signup = false;
  bool passwordVisible = false;

  final _formKey = GlobalKey<FormState>();
  moveTo() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  // onSignup() async {
  //   setState(() {
  //     signup = true;
  //   });
  //   await Future.delayed(Duration(seconds: 1));
  //   await Navigator.pushNamed(context, MyRoutes.signupRoute);
  //   setState(() {
  //     signup = false;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.grey,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "assets/2.png",
                width: 180,
                color: Colors.black,
              )),
          Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                "assets/5.png",
                width: 200,
                color: Colors.black,
              )),
          Positioned(
              bottom: 5,
              left: 5,
              child: Image.asset(
                "assets/1.png",
                width: 100,
                color: Colors.black,
              )),
          Material(
              color: Colors.grey,
              child: SingleChildScrollView(
                child: Form(
                  autovalidateMode: AutovalidateMode.always,
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/logo.png",
                          width: 200,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 32.5),
                          child: Column(
                            children: [
                              TextFormField(
                    
                                  validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Field cannot be Empty";
                                  } 
                                  return null;
                                },
                                // controller: _name,
                                decoration: InputDecoration(
                                  fillColor: Colors.black,
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.black, width: 2.0),
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  hintText: "Email,Username",
                                  icon: Icon(Icons.person),
                                  labelText: ("Enter Email or Username"),
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              TextFormField(
                                controller: pass,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Password cannot be Empty";
                                  } else if (value.length < 6) {
                                    return "Password at least 6";
                                  }
                                  return null;
                                },
                                obscureText: !passwordVisible,
                                decoration: InputDecoration(
                                  icon: Icon(Icons.key),
                                  suffixIcon: new IconButton(
                                    icon: Icon(
                                      // Based on passwordVisible state choose the icon
                                      passwordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        passwordVisible = !passwordVisible;
                                      });
                                    },
                                  ),
                                  fillColor: Colors.orange,
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.orange, width: 2.0),
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  hintText: "Enter Password",
                                  labelText: ("Password"),
                                ),
                              ),

                              SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  Material(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(
                                        changeButton ? 60 : 8),
                                    child: InkWell(
                                      onTap: () {
                                        moveTo();
                                      },
                                      child: AnimatedContainer(
                                        duration: Duration(seconds: 1),
                                        width: changeButton ? 60 : 150,
                                        height: 50,
                                        alignment: Alignment.center,
                                        child: changeButton
                                            ? Icon(
                                                Icons.done,
                                                color: Colors.white,
                                              )
                                            : Text(
                                                "Login",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text("Do not Have Account?"),
                              SizedBox(
                                height: 20,
                              ),
                              // InkWell(
                              //   onTap: (() {
                              //     setState(() {
                              //       onSignup();
                              //     });
                              //   }),
                              //   child: AnimatedContainer(
                              //     duration: Duration(seconds: 1),
                              //     alignment: Alignment.center,
                              //     width: signup ? 50 : 100,
                              //     height: 50,
                              //     child: Text(
                              //       "Sign Up",
                              //       style: TextStyle(color: Colors.white),
                              //     ),
                              //     decoration: BoxDecoration(
                              //         color: Colors.black,
                              //         borderRadius: BorderRadius.circular(
                              //             signup ? 50 : 8)),
                              //   ),
                              // ),
                        
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
