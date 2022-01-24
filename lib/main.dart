import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:neoamphoric/app/modules/home/views/view/pages/Login/Login.dart';

void main() {
  runApp(
      GetMaterialApp(debugShowCheckedModeBanner: false, home: const MyApp()));
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
