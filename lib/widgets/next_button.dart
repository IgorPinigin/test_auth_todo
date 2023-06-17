import 'package:flutter/material.dart';
import 'package:test_1/constants/colors.dart';

class NextButton extends StatelessWidget {
  final String title;
  final onTapHandler;
  final double sWidth;
  final double sHeight;
  const NextButton({
    super.key,
    required this.sWidth,
    required this.sHeight,
    required this.title,
    required this.onTapHandler,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTapHandler,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        fixedSize: Size(sWidth, sHeight * .1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, fontFamily: 'Roboto'),
      ),
    );
  }
}
