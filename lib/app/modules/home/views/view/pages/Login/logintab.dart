import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Logintab extends StatelessWidget {
  const Logintab({
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
              "Username/email address",
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
            Text(
              "Forgot password?",
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 50,
            ),
            Align(
              child: Text(
                "Or Login with",
              ),
            )
          ],
        ),
      ),
    );
  }
}
