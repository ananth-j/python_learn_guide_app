import 'package:flutter/material.dart';
import 'package:code_text_field/code_text_field.dart';
import 'package:highlight/languages/python.dart';

class CodeWidget extends StatelessWidget {
  final code;

  const CodeWidget({super.key, required this.code});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CodeField(
            controller: CodeController(
              text: code,
              language: python, // Python syntax highlighting
            ),
            readOnly: true, // Make it a non-editable viewer
            textStyle: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
