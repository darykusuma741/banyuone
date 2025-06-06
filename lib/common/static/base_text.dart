import 'package:banyuone/common/static/colors_name.dart';
import 'package:flutter/material.dart';

TextStyle textStyle = TextStyle(fontFamily: "Urbanist", color: ColorsName.darkBlueGray, letterSpacing: 0.0, height: 1.0);

class BaseText {
  static TextStyle white = textStyle.copyWith(color: ColorsName.white);
  static TextStyle darkBlueGray = textStyle.copyWith(color: ColorsName.darkBlueGray);
  static TextStyle lightGray = textStyle.copyWith(color: ColorsName.lightGray);
  static TextStyle lightSilver = textStyle.copyWith(color: ColorsName.lightSilver);
  static TextStyle paleBlue = textStyle.copyWith(color: ColorsName.paleBlue);
  static TextStyle slateGray = textStyle.copyWith(color: ColorsName.slateGray);
  static TextStyle iceBlue = textStyle.copyWith(color: ColorsName.iceBlue);
  static TextStyle mintGreen = textStyle.copyWith(color: ColorsName.mintGreen);
  static TextStyle pastelRed = textStyle.copyWith(color: ColorsName.pastelRed);
  static TextStyle darkRed = textStyle.copyWith(color: ColorsName.darkRed);
}
