import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class H1 extends StatelessWidget {
  final String h1;
  const H1({super.key, required this.h1});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 3, bottom: 3, left: 10),
        // margin: const EdgeInsets.only(top: 0, bottom: 5, left: 0),
        // decoration:
        //     const BoxDecoration(color: Color.fromARGB(255, 220, 255, 250)),
        child: Text(
          h1,
          style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 24, 122, 106)),
        ));
  }
}
