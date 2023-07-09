import 'package:flutter/material.dart';
import 'package:test_1/constants/colors.dart';

class RichTextExample extends StatelessWidget {
  const RichTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(text: TextSpan(
          children: [
            const TextSpan(text: 'Already have an account?', style: TextStyle(color: Colors.black87)),
            WidgetSpan(child: GestureDetector(child: const Text('sign in', style: TextStyle(color: activeTextColor),), onTap: () => Navigator.pushNamed(context, '/tasks'),))          ]
        )),
      ),
    );
  }
}