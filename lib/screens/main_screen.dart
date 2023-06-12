import 'package:flutter/material.dart';
import 'package:test_1/widgets/next_button.dart';

import '../constants/colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sHeight = MediaQuery.of(context).size.height;
    final sWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: background,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/ellipse.png"),
                fit: BoxFit.scaleDown,
                alignment: Alignment.topLeft),
          ),
          width: sWidth,
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
                          flex: 9,
                        ),
                        const Expanded(
                          flex: 12,
                          child: PhoneImage(),
                        ),
                        const Spacer(
                          flex: 1,
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
                          flex: 1,
                        ),
                        Expanded(
                          flex: 4,
                          child: NextButton(
                            sWidth: sWidth,
                            sHeight: sHeight,
                            title: "Get Started",
                            onTapHandler: () {},
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ));
  }
}

class PhoneImage extends StatelessWidget {
  const PhoneImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: const [
      Image(
        image: AssetImage("assets/images/phone.png"),
        fit: BoxFit.contain,
      )
    ]);
  }
}
