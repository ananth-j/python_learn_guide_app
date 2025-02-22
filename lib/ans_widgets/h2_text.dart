import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class H2 extends StatelessWidget {
  final String h2;
  const H2({super.key, required this.h2});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 10, bottom: 3, left: 10),
        decoration: const BoxDecoration(),
        child: Text(
          h2,
          style: GoogleFonts.montserrat(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 9, 114, 97)),
        ));
  }
}
