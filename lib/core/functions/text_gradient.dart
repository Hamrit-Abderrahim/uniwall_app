import 'package:flutter/material.dart';

final Shader linearGradient = const LinearGradient(
  colors: <Color>[
    Color(0xff10B981),
    Color(0xFF0075FF),
  ],
).createShader(const Rect.fromLTWH(0.0, 0.0, 350.0, 200.0));
