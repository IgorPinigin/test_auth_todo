import 'package:flutter/material.dart';
import 'package:test_1/widgets/next_button.dart';
import '../constants/colors.dart';
import '../constants/decorations.dart';
import '../widgets/phone_image.dart';
import '../widgets/text_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
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
            child: Column(
              children: [
                const Spacer(
                  flex: 70,
                ),
                const Expanded(
                  flex: 10,
                  child: Text(
                    "Welcome Back!",
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(
                  flex: 10,
                ),
                const Expanded(
                    flex: 80,
                    child: PhoneImage(path: "assets/images/listViewImage.png")),
                const Spacer(
                  flex: 15,
                ),
                const TextFormFieldAuth(insertHintText: "Enter your email"),
                const Spacer(
                  flex: 9,
                ),
                const TextFormFieldAuth(insertHintText: "Enter your password"),
                const Spacer(
                  flex: 5,
                ),
                const Expanded(
                  flex: 10,
                  child: Text("Forget Password?",
                      style: TextStyle(
                          color: activeTextColor,
                          fontFamily: 'Roboto',
                          fontSize: 20,
                          fontWeight: FontWeight.w100)),
                ),
                const Spacer(
                  flex: 20,
                ),
                Expanded(
                  flex: 25,
                  child: NextButton(
                    sWidth: sWidth,
                    sHeight: sHeight,
                    title: 'Log In',
                    onTapHandler: () => Navigator.pushNamed(context, '/tasks'),
                  ),
                ),
                const Spacer(
                  flex: 10,
                ),
                Expanded(
                  flex: 20,
                  child: RichText(
                      text: TextSpan(children: [
                    const TextSpan(
                      text: 'Don`t have an account ?',
                      style: TextStyle(color: Colors.black87, fontSize: 18),
                    ),
                    WidgetSpan(
                        child: GestureDetector(
                      child: const Text(
                        ' sign up',
                        style: TextStyle(color: activeTextColor, fontSize: 18),
                      ),
                      onTap: () => Navigator.pushNamed(context, '/auth'),
                    ))
                  ])),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
