import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neoamphoric/app/modules/home/views/svgstring.dart';

class central extends StatefulWidget {
  central({Key? key}) : super(key: key);

  @override
  State<central> createState() => _centralState();
}

class _centralState extends State<central> {
  double index = 1;
  @override
  Widget build(BuildContext context) {
    String imagepath = "assets/jpeg/${index.toInt()}.jpg";
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 300,
                child: Stack(
                  children: [
                    Container(
                      height: 300,
                      child: Image.asset(
                        imagepath,
                        width: 1024,
                        height: 1024,
                        gaplessPlayback: true,
                      ),
                    ),
                    SvgPicture.string(svgstring[index.toInt()]),
                  ],
                )),
            Visibility(
              maintainAnimation: true,
              maintainSize: true,
              visible: false,
              maintainState: true,
              maintainInteractivity: true,
              child: Slider(
                autofocus: true,
                value: index,
                min: 1,
                max: 100,
                onChanged: (double value) {
                  setState(() {
                    if (value < 100) {
                      index = value;
                    }
                    if (value >= 100) {
                      return null;
                    }
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
