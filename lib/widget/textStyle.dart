// ignore_for_file: file_names

import 'package:flutter/material.dart';

//header1

class Greeting extends TextStyle {
  final Color color;
  final FontWeight fontWeight;
  final String fontFamily;
  final double size;
  const Greeting({
    this.color = Colors.grey,
    this.fontWeight = FontWeight.normal,
    this.size = 15,
    this.fontFamily = 'Poppins',
  }) : super(
          color: color,
          fontWeight: fontWeight,
          fontSize: size,
          fontFamily: fontFamily,
        );
}

class HeaderHome extends TextStyle {
  final Color color;
  final FontWeight fontWeight;
  final String fontFamily;
  final double size;
  const HeaderHome({
    this.color = Colors.black,
    this.fontWeight = FontWeight.normal,
    this.size = 21,
    this.fontFamily = 'Poppins',
  }) : super(
          color: color,
          fontWeight: fontWeight,
          fontSize: size,
          fontFamily: fontFamily,
        );
}

class LihatSemua extends TextStyle {
  final Color color;
  final FontWeight fontWeight;
  final double size;
  final String fontFamily;

  const LihatSemua({
    this.color = Colors.grey,
    this.fontWeight = FontWeight.w400,
    this.size = 12,
    this.fontFamily = 'Poppins',
  }) : super(
          color: color,
          fontWeight: fontWeight,
          fontSize: size,
          fontFamily: fontFamily,
        );
}

class BookTitle extends TextStyle {
  final Color color;
  final FontWeight fontWeight;
  final double size;
  final String fontFamily;

  const BookTitle({
    this.color = Colors.black,
    this.fontWeight = FontWeight.bold,
    this.size = 14,
    this.fontFamily = 'Poppins',
  }) : super(
          color: color,
          fontWeight: fontWeight,
          fontSize: size,
          fontFamily: fontFamily,
        );
}

class Head1 extends TextStyle {
  final Color color;
  final FontWeight fontWeight;
  final double size;
  final String fontFamily;

  const Head1({
    this.color = Colors.black,
    this.fontWeight = FontWeight.bold,
    this.fontFamily = "Poppins",
    this.size = 27,
  }) : super(
          color: color,
          fontWeight: fontWeight,
          fontSize: size,
          fontFamily: fontFamily,
        );
}

class SemesterText extends TextStyle {
  final Color color;
  final FontWeight fontWeight;
  final double size;
  final String fontFamily;

  const SemesterText({
    this.color = Colors.black,
    this.fontWeight = FontWeight.bold,
    this.fontFamily = "Poppins",
    this.size = 30,
  }) : super(
          color: color,
          fontWeight: fontWeight,
          fontSize: size,
          fontFamily: fontFamily,
        );
}
class DeskripsiBuku extends TextStyle {
  final Color color;
  final FontWeight fontWeight;
  final String fontFamily;
  final double size;
  const DeskripsiBuku({
    this.color = Colors.black,
    this.fontWeight = FontWeight.normal,
    this.size = 14,
    this.fontFamily = 'Poppins',
  }) : super(
          color: color,
          fontWeight: fontWeight,
          fontSize: size,
          fontFamily: fontFamily,
        );
}