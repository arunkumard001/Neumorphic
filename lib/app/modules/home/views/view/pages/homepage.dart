import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neoamphoric/app/modules/home/views/appbar.dart';
import 'package:neoamphoric/app/modules/home/views/centerwidget.dart';
import 'package:neoamphoric/app/modules/home/views/gridwidget.dart';
import 'package:neoamphoric/app/modules/home/views/textfiled.dart';
import 'package:neoamphoric/app/modules/home/views/view/component/color.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> text = ["Orbit", "PSN", "Pharynx-Larynx"];
  final List<IconData> _icon = [
    Icons.download_rounded,
    Icons.download_done_rounded,
    Icons.download_rounded
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Customappbar(),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 55),
                child: textfield,
              ),
              const SizedBox(
                height: 30,
              ),
              const Centerwidget(),
              const SizedBox(
                height: 13,
              ),
              GradientText(
                "Head n Neck",
                style: const TextStyle(),
                colors: [secondry, primary],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 500,
                child: GridView.builder(
                  clipBehavior: Clip.none,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2,
                    mainAxisSpacing: 30,
                  ),
                  itemCount: text.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Gridwidget(
                      text: text[index],
                      gridIcons: _icon[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
