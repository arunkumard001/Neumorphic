import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neoamphoric/app/modules/home/views/view/component/color.dart';
import 'package:neoamphoric/app/modules/home/views/view/pages/secondpage.dart';
import 'package:neoamphoric/app/modules/home/views/waveclipper.dart';

import 'package:simple_gradient_text/simple_gradient_text.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 160,
        ),
        ClipPath(
          clipper: WaveClipper(),
          child: Container(
            height: 125,
            decoration: const BoxDecoration(
              color: Colors.black,
              // gradient: LinearGradient(colors: [primary, secondry])
            ),
          ),
        ),
        ClipPath(
          clipper: WaveClipper(),
          child: Container(
            height: 120,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [secondry, primary])),
          ),
        ),
        Positioned(
            top: 50,
            left: 70,
            child:
                GradientText("CT", radius: 2.0, colors: [Colors.black, base])),
        Positioned(
          top: 20,
          right: 20,
          child: Neumorphic(
            style: const NeumorphicStyle(
              // disableDepth: true,
              surfaceIntensity: 1,
              border: NeumorphicBorder.none(),
              shadowLightColor: Colors.white,
              intensity: 1,
              color: Colors.white,
              shadowDarkColor: Colors.black45,
              boxShape: NeumorphicBoxShape.circle(),
              // shape: NeumorphicShape.convex
            ),
            child: IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black26,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => central()),
                );
              },
            ),
          ),
        ),
        Positioned(
          top: 140,
          right: 70,
          child: GradientText("MRI", colors: [secondry, primary]),
        ),
      ],
    );
  }
}
