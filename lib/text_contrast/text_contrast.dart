import 'package:flutter/material.dart';

class TextContrast extends StatelessWidget {
  final String data;
  final Color backgroundColor;

  const TextContrast({
    Key? key,
    required this.data,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        color: backgroundColor.computeLuminance() > 0.5
            ? Colors.black
            : Colors.white,
      ),
    );
  }
}
