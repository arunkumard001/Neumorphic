import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_neumorphic/flutter_neumorphic.dart';

int _index = 1;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: DefaultTabController(
        initialIndex: _index,
        length: 2,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 244,
                      width: size.width,
                      alignment: Alignment.bottomLeft,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(30)),
                          gradient: const LinearGradient(colors: [
                            Color(0xFF2F3439),
                            const Color(0xFF26292E),
                            const Color(0xFF17191C)
                          ])),
                      child: TabBar(
                          indicatorPadding: EdgeInsets.symmetric(vertical: 10),
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorWeight: 1.5,
                          onTap: (index) {
                            setState(() {
                              _index = index;
                            });
                          },
                          tabs: [
                            Tab(
                              text: "Login",
                            ),
                            Tab(
                              text: "Sign-Up",
                            )
                          ]),
                    ),
                  ],
                ),
                SizedBox(
                  height: 63,
                ),
                Container(
                  height: 350,
                  child: TabBarView(
                    // physics: NeverScrollableScrollPhysics(),
                    children: [
                      Logintab(),
                      signuptab(),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Neumorphic(
                      style: NeumorphicStyle(
                          boxShape: NeumorphicBoxShape.circle(),
                          color: Colors.black),
                      child: NeumorphicButton(
                          child: Image.asset(
                        "assets/images/g.png",
                        fit: BoxFit.contain,
                        width: 20,
                      )),
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                          boxShape: NeumorphicBoxShape.circle(),
                          color: Colors.black),
                      child: NeumorphicButton(
                          child: Image.asset(
                        "assets/images/fb.png",
                        fit: BoxFit.contain,
                        width: 10,
                      )),
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                          boxShape: NeumorphicBoxShape.circle(),
                          color: Colors.black),
                      child: NeumorphicButton(
                          child: Image.asset(
                        "assets/images/tw.png",
                        fit: BoxFit.contain,
                        width: 25,
                      )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 250,
                  height: 40,
                  child: NeumorphicButton(
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.convex,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(93))),
                    child: Text(
                      _index == 1 ? "sign-up" : "Login",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class signuptab extends StatelessWidget {
  const signuptab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name",
              textAlign: TextAlign.start,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "name", border: UnderlineInputBorder()),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "email address",
              textAlign: TextAlign.start,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "email address", border: UnderlineInputBorder()),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "password",
              textAlign: TextAlign.start,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "password", border: UnderlineInputBorder()),
            ),
            SizedBox(
              height: 50,
            ),
            Align(
              child: Text(
                "Or \n Continue with",
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Logintab extends StatelessWidget {
  const Logintab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Username/email address",
              textAlign: TextAlign.start,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "email address", border: UnderlineInputBorder()),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "password",
              textAlign: TextAlign.start,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "password", border: UnderlineInputBorder()),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Forgot password?",
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 50,
            ),
            Align(
              child: Text(
                "Or Login with",
              ),
            )
          ],
        ),
      ),
    );
  }
}
