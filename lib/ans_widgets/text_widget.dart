import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  final String text;

  const TextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 3, bottom: 3, left: 8, right: 8),
      decoration: const BoxDecoration(),
      child: RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(
          children: [
            const WidgetSpan(
              child: SizedBox(width: 20), // Indentation width
            ),
            TextSpan(
              text: text,
              style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
