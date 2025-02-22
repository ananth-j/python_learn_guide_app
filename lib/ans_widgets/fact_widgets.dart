import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FactWidget extends StatelessWidget {
  final String fact;
  const FactWidget({super.key, required this.fact});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 10, bottom: 3, left: 10),
        decoration: const BoxDecoration(),
        child: Text(
          fact,
          style: GoogleFonts.montserrat(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 9, 114, 97)),
        ));
  }
}
