import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Centerwidget extends StatelessWidget {
  const Centerwidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
        style: const NeumorphicStyle(boxShape: NeumorphicBoxShape.circle()),
        child: Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: const Color(0xff1B1F24),
            // shape: BoxShape.circle,
            borderRadius: BorderRadius.circular(10),
            // gradient: LinearGradient(colors: [center1, center]),
          ),
          child: const CircleAvatar(
            // backgroundColor: Colors.amber,
            foregroundColor: Colors.black26,
            radius: 50.0,
            backgroundImage: AssetImage(
              "assets/5_6179460673307673289.png",
            ),
          ),
        ));
  }
}
