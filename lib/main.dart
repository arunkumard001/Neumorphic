import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neoamphoric/Login/Login.dart';
import 'package:neoamphoric/appbar.dart';
import 'package:neoamphoric/centerwidget.dart';
import 'package:neoamphoric/gridwidget.dart';
import 'package:neoamphoric/textfiled.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NeumorphicApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        themeMode: ThemeMode.dark,
        theme: NeumorphicThemeData(
          baseColor: Color(0xFFFFFFFF),
          lightSource: LightSource.topLeft,
          depth: 10,
        ),
        darkTheme: NeumorphicThemeData(
          shadowLightColor: Colors.white70,
          shadowDarkColor: Colors.black,
          // shape: NeumorphicShape.convex,
          baseColor: Color(0xFF262B2F),
          lightSource: LightSource.bottomRight,
          depth: 6,
        ),
        home: Login());
  }
}

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
