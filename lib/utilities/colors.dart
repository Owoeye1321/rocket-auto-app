import 'package:flutter/material.dart';

const Color rootPink = Color.fromARGB(255, 196, 30, 233);
const Color lightPink = Color.fromARGB(255, 47, 1, 59);

const Color wrongAnswerColor = Color.fromARGB(255, 223, 54, 158);

//color scheme.fromSeed constructor exhibit the flexibility of the color shades
var kColorScheme = ColorScheme.fromSeed(seedColor: rootPink);
var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Color.fromARGB(255, 98, 96, 96),
);
