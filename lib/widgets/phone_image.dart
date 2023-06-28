import 'package:flutter/material.dart';

class PhoneImage extends StatelessWidget {
  const PhoneImage({
    super.key,
    required this.path,
  });

  final String path;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Image(
        image: AssetImage(path),
        fit: BoxFit.contain,
      )
    ]);
  }
}