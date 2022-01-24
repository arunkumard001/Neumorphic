import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget textfield = Neumorphic(
  style: NeumorphicStyle(
      surfaceIntensity: .1,
      shadowLightColor: Colors.white70,
      shadowDarkColor: Colors.black,
      shape: NeumorphicShape.convex,
      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(22))),
  child: const Padding(
    padding: EdgeInsets.symmetric(
      horizontal: 30,
    ),
    child: TextField(
      decoration: InputDecoration(
        suffixText: "Search",
        icon: Icon(Icons.search, color: Colors.white70),
        border: InputBorder.none,
      ),
    ),
  ),
);
