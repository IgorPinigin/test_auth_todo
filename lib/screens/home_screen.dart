import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: fet(),
    );
  }
}

class fet extends StatelessWidget {
  const fet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
          text: TextSpan(
        children: [
          new TextSpan(
            text: 'This is no Link, ',
            style: new TextStyle(color: Colors.black),
          ),
          new TextSpan(
            text: 'but this is',
            style: new TextStyle(color: Colors.blue),
            recognizer: new TapGestureRecognizer()
              ..onTap = () {
                print("jopa");
              },
          ),
        ],
      )),
    );
  }
}
