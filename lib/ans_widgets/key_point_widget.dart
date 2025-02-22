import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KeyPointWidget extends StatelessWidget {
  final String keyPoint;
  const KeyPointWidget({super.key, required this.keyPoint});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
        decoration: const BoxDecoration(),
        child: Text(
          keyPoint,
          style: GoogleFonts.montserrat(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 26, 26, 26)),
        ));
  }
}
