import 'package:flutter/material.dart';

class TextFormFieldAuth extends StatelessWidget {
  final String insertHintText;
  const TextFormFieldAuth({super.key, required this.insertHintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
          hintText: insertHintText,
          hintStyle: const TextStyle(color: Colors.black54),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(80),
            borderSide: BorderSide.none,
          )),
    );
  }
}
