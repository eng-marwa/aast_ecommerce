import 'package:aast_ecommerce/resources/colors.dart';
import 'package:flutter/material.dart';

class TextStyles {
  TextStyles._();

  static TextStyle defaultStyle = const TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color: ColorManager.blackColor);

  static TextStyle titleStyle = const TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w800,
      fontSize: 24,
      color: ColorManager.blackColor);

  static TextStyle descriptionStyle = const TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      fontSize: 14,
      color: ColorManager.greyColorA8);

  static TextStyle nextButtonStyle = const TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color: ColorManager.pinkColor);

  static TextStyle prevButtonStyle = const TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color: ColorManager.greyColor);
}
