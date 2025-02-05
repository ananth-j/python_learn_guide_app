import 'package:flutter/material.dart';

class CodeWidget extends StatelessWidget {
  final String code;
  const CodeWidget({super.key, required this.code});

  @override
  Widget build(BuildContext context) {
    return Text(code);
  }
}
