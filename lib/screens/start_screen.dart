import 'package:flutter/material.dart';
import 'package:test_1/constants/colors.dart';
import 'package:test_1/widgets/next_button.dart';

import '../constants/decorations.dart';
import '../widgets/phone_image.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({
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
        height: sHeight ,
        child: FractionallySizedBox(
          widthFactor: .8,
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(
                          flex: 7,
                        ),
                        const Expanded(
                          flex: 9,
                          child: PhoneImage(
                            path: "assets/images/phone.png",
                          ),
                        ),
                        const Spacer(
                          flex: 2,
                        ),
                        const Expanded(
                          flex: 2,
                          child: Text(
                            "Get things done with TODo",
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 18,
                                color: Colors.black87,
                                fontWeight: FontWeight.bold),
                          ),
                        ),const Spacer(
                          flex: 1,
                        ),
                        const Flexible(
                          flex: 10,
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fames lectus fermentum ultrices ipsum ornare id lorem vestibulum, congue. Quis nulla vel consectetur ultrices. Nulla est faucibus mollis faucibus sed libero amet. Facilisis ut arcu facilisis egestas iaculis nec sit. Donec adipiscing ac massa egestas.",
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 16,
                                color: Colors.black54,
                                fontWeight: FontWeight.w100),
                          ),
                        ),
                        const Spacer(
                          flex: 3,
                        ),
                        Expanded(
                          flex: 3,
                          child: NextButton(
                              sWidth: sWidth,
                              sHeight: sHeight,
                              title: 'Get Started',
                              onTapHandler: () => Navigator.pushNamed(context, '/auth')),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                      ]))
            ],
          ),
        ),
      ),
    );
  }
}
