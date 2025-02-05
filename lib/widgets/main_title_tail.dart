import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screens/ans_screen_t1.dart';

class MainTitleTail extends StatelessWidget {
  final String title;
  final List<List<dynamic>> data;
  const MainTitleTail({super.key, required this.title, required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => AnsScreenT1(
                  data: data,
                  title: title,
                )));
      },
      child: AnimatedContainer(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 217, 241, 241),
            borderRadius: BorderRadius.circular(5)),
        duration: const Duration(milliseconds: 500),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                title,
                style: GoogleFonts.montserrat(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios_sharp),
              padding: const EdgeInsets.all(0),
            )
          ],
        ),
      ),
    );
  }
}
