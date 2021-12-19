import 'package:flutter/material.dart';

class TlrtInputDecoration extends InputDecoration {
  final String hintText;
  final bool isPassword;
  final bool? isObcure;
  final Widget? suffixIcon;

  TlrtInputDecoration({
    required this.hintText,
    required this.isPassword,
    this.isObcure,
    this.suffixIcon,
  }) : super(
            hintText: hintText,
            border: InputBorder.none,
            suffixIcon: suffixIcon != null ? suffixIcon : null);
}
