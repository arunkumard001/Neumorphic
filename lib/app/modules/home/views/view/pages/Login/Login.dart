import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neoamphoric/app/modules/home/views/view/pages/Login/logintab.dart';
import 'package:neoamphoric/app/modules/home/views/view/pages/Login/signuptab.dart';

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
          backgroundColor: const Color(0xFF202327),
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
                          labelStyle: const TextStyle(
                            color: const Color(0xFF6D737A),
                            fontFamily: "Montserrat",
                          ),
                          indicatorPadding:
                              const EdgeInsets.symmetric(vertical: 10),
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorWeight: 1.5,
                          onTap: (index) {
                            setState(() {
                              _index = index;
                            });
                          },
                          tabs: [
                            const Tab(
                              text: "Login",
                            ),
                            const Tab(
                              text: "Sign-Up",
                            )
                          ]),
                    ),
                    Center(
                        child: Image.asset(
                      "assets/svg/logo.png",
                      scale: 1.6,
                    )),
                  ],
                ),
                const SizedBox(
                  height: 63,
                ),
                Container(
                  height: 350,
                  child: const TabBarView(
                    // dragStartBehavior: DragStartBehavior.down,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const Logintab(),
                      const signuptab(),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Neumorphic(
                      style: const NeumorphicStyle(
                          boxShape: const NeumorphicBoxShape.circle(),
                          color: Colors.black),
                      child: NeumorphicButton(
                          child: Image.asset(
                        "assets/images/g.png",
                        fit: BoxFit.contain,
                        width: 20,
                      )),
                    ),
                    Neumorphic(
                      style: const NeumorphicStyle(
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
                      style: const NeumorphicStyle(
                          boxShape: const NeumorphicBoxShape.circle(),
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
                const SizedBox(
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
                      style: const TextStyle(
                        //color: Color(0x00ffffff),
                        fontFamily: "Montserrat",
                      ),
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
