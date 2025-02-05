import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubTitleWidget extends StatelessWidget {
  final String subTitle;
  const SubTitleWidget({super.key, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10),
        decoration: const BoxDecoration(),
        child: Text(
          subTitle,
          style: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: const Color.fromARGB(255, 24, 122, 106)),
        ));
  }
}
