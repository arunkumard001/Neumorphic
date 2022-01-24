import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neoamphoric/app/modules/home/views/view/component/textstyle.dart';

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
                style: TextStyle(
                  color: Color(0xFF6D737A),
                  fontFamily: "Montserrat",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
