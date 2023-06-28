import 'package:flutter/material.dart';

import '../constants/decorations.dart';
import '../widgets/phone_image.dart';

class ContainerStart extends StatelessWidget {
  const ContainerStart({
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
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Spacer(
                        flex: 9,
                      ),
                      Expanded(
                        flex: 12,
                        child: PhoneImage(
                          path: "assets/images/phone.png",
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Expanded(
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
                      Flexible(
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
                    ]))
          ],
        ),
      ),
    );
  }
}