import 'package:flutter/cupertino.dart';

class TlrtContainerTxtDecoration extends BoxDecoration {
  final Color color;
  TlrtContainerTxtDecoration({
    required this.color,
  }) : super(
          color: color,
          borderRadius: BorderRadius.circular(16),
        );
}
