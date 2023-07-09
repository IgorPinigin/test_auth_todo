import 'package:flutter/material.dart';
import 'package:test_1/constants/colors.dart';
import '../constants/decorations.dart';
import '../widgets/next_button.dart';
import '../widgets/text_form_field.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final sHeight = MediaQuery.of(context).size.height;
    final sWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: background,
      body: Container(
        decoration: circles,
        width: sWidth,
        height: sHeight,
        child: FractionallySizedBox(
          widthFactor: .8,
          child: Form(
              child: Column(children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  const Spacer(
                    flex: 100,
                  ),
                  const Text(
                    "Welcome Onboard !",
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(
                    flex: 10,
                  ),
                  const Text(
                    "Let's help you meet up your tasks",
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        color: Colors.black54,
                        fontWeight: FontWeight.w100),
                  ),
                  const Spacer(
                    flex: 30,
                  ),
                  const TextFormFieldAuth(insertHintText: "Enter your full name"),
                  const Spacer(
                    flex: 10,
                  ),
                  const TextFormFieldAuth(insertHintText: "Enter email"),
                  const Spacer(
                    flex: 10,
                  ),
                  const TextFormFieldAuth(insertHintText: "Enter password"),
                  const Spacer(
                    flex: 10,
                  ),
                  const TextFormFieldAuth(insertHintText: "Confirm password"),
                  const Spacer(
                    flex: 20,
                  ),
                  Expanded(
                    flex: 29,
                    child: NextButton(
                        sWidth: sWidth,
                        sHeight: sHeight,
                        title: 'Register',
                        onTapHandler: () =>
                            Navigator.pushNamed(context, '/tasks')),
                  ),
                  const Spacer(
                    flex: 10,
                  ),
                  Expanded(
                    flex: 20,
                    child: RichText(
                        text: TextSpan(children: [
                      const TextSpan(
                        text: 'Already have an account ?',
                        style: TextStyle(color: Colors.black87, fontSize: 18),
                      ),
                      WidgetSpan(
                          child: GestureDetector(
                        child: const Text(
                          ' sign in',
                          style:
                              TextStyle(color: activeTextColor, fontSize: 18),
                        ),
                        onTap: () => Navigator.pushNamed(context, '/login'),
                      ))
                    ])),
                  )
                ],
              ),
            ),
          ])),
        ),
      ),
    );
  }
}
