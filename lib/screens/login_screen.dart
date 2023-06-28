import 'package:flutter/material.dart';
import '../constants/decorations.dart';
import '../widgets/text_form_field.dart';

class ContainerForm extends StatelessWidget {
  const ContainerForm({
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
        child: Form(
            child: Column(children: [
          Expanded(
            flex: 1,
            child: Column(
              children: const [
                Spacer(
                  flex: 100,
                ),
                Text(
                  "Welcome Onboard !",
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(
                  flex: 10,
                ),
                Text(
                  "Let's help you meet up your tasks",
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 18,
                      color: Colors.black54,
                      fontWeight: FontWeight.w100),
                ),
                Spacer(
                  flex: 30,
                ),
                TextFormFieldAuth(insertHintText: "Enter your full name"),
                Spacer(
                  flex: 10,
                ),
                TextFormFieldAuth(insertHintText: "Enter email"),
                Spacer(
                  flex: 10,
                ),
                TextFormFieldAuth(insertHintText: "Enter password"),
                Spacer(
                  flex: 10,
                ),
                TextFormFieldAuth(insertHintText: "Confirm password"),
              ],
            ),
          ),
        ])),
      ),
    );
  }
}