import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/decorations.dart';
import '../widgets/phone_image.dart';
import '../widgets/text_form_field.dart';


class ContainerAuth extends StatelessWidget {
  const ContainerAuth({
    super.key,
    required this.sWidth,
    required this.sHeight,
  });

  final double sWidth;
  final double sHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: circles,
      width: sWidth,
      height: sHeight * 0.8,
      child: FractionallySizedBox(
        widthFactor: .8,
        child: Expanded(
          flex: 1,
          child: Column(
            children: [
              const Spacer(
                  flex: 100,
                ),
              const Text(
                "Welcome Back!",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(
                  flex: 3,
                ),
              const Expanded(flex: 100, child: PhoneImage(path: "assets/images/listViewImage.png")),
              const Spacer(
                  flex: 10,
                ),
              Expanded(
                flex: 100,
                child: Form(
                    child: Column(
                  children: const [
                    TextFormFieldAuth(insertHintText: "Enter your email"),
                    Spacer(
                    flex: 1,
                  ),
                    TextFormFieldAuth(insertHintText: "Enter your password"),
                    Spacer(
                    flex: 90,
                  ),
                    Text("Forget Password?",
                        style: TextStyle(
                            color: activeTextColor,
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            fontWeight: FontWeight.w100))
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}