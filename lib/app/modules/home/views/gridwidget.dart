import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neoamphoric/app/modules/home/views/view/component/color.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

// ignore: must_be_immutable
class Gridwidget extends StatelessWidget {
  Gridwidget({Key? key, required this.text, required this.gridIcons})
      : super(key: key);
  var text = "";
  IconData gridIcons;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      child: Stack(
        children: [
          Neumorphic(
            style: const NeumorphicStyle(
                border: NeumorphicBorder(
                    width: 4, isEnabled: true, color: Color(0xFF1f2b2e)),
                boxShape: NeumorphicBoxShape.circle()),
            child: Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [gridcolor, gradient]),
              ),
              child: Center(
                child: GradientText(
                  text,
                  colors: [
                    centertext,
                    center,
                  ],
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Positioned(
              left: 128,
              bottom: 2,
              child: Icon(
                gridIcons,
                size: 20,
                color: const Color(0xFF1973c1),
              )),
        ],
      ),
    );
  }
}
