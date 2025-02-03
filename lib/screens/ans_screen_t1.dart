import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnsScreenT1 extends StatefulWidget {
  final data;
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
      body: Column(
        children: [],
      ),
    );
  }
}

List<List<String>> mainList = [
  ["code", "hsfs"],
  ["text", "hsfs"],
  ["subtile", "hsfs"],
  ["main title", "hsfs"],
];
