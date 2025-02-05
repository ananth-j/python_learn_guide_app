import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ans_widgets/code_widget.dart';
import '../ans_widgets/sub_title_widget.dart';
import '../ans_widgets/text_widget.dart';

class AnsScreenT1 extends StatefulWidget {
  final List<List<dynamic>> data;
  final String title;
  const AnsScreenT1({super.key, required this.data, required this.title});

  @override
  State<AnsScreenT1> createState() => _AnsScreenT1State();
}

class _AnsScreenT1State extends State<AnsScreenT1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style:
              GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        backgroundColor: const Color.fromARGB(255, 9, 223, 187),
      ),
      body: ListView.builder(
          itemCount: widget.data.length,
          itemBuilder: (context, index) {
            var flData = widget.data[index]; //   ["title", "What is Python"],
            var header = flData[0]; // "title"
            var headerData = flData[1]; // "what is python"
            switch (header) {
              case "title":
                return SubTitleWidget(subTitle: headerData);
              case "text":
                return TextWidget(text: headerData);
              case "code":
                return CodeWidget(code: headerData);
            }
            return Text("Nope");
          }),
    );
  }
}

List<List<dynamic>> whatIsPython = [
  ["no", 1],
  ["title", "What is Python"],
  [
    "text",
    "Python is a versatile and widely-used programming language known for its clear syntax and readability. It's a high-level language, which means it handles many of the complex details of computer operations for you, allowing you to focus on solving problems. Python is also interpreted, meaning code is executed line by line, making it easier to debug and test.  Its design philosophy emphasizes code readability, making it a great choice for beginners and experienced developers alike"
  ]
];
