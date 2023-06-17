import 'package:flutter/material.dart';
///Эта переменная добавляет картинку в левом верхнеи углу экрана 
const BoxDecoration circles = BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/ellipse.png"),
            fit: BoxFit.scaleDown,
            alignment: Alignment.topLeft),
      );