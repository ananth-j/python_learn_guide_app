import 'package:flutter/material.dart';

// LinearGradient menuAppbarGradient = const LinearGradient(
//   begin: Alignment.topLeft,
//   end: Alignment.bottomRight,
//   colors: [
//     Color(0xFFD16BA5),
//     Color(0xFFC777B9),
//     Color(0xFFBA83CA),
//     Color(0xFFAA8FD8),
//     Color(0xFF9A9AE1),
//     Color(0xFF8AA7EC),
//     Color(0xFF79B3F4),
//     Color(0xFF69BFF8),
//     Color(0xFF52CFFE),
//     Color(0xFF41DFFF),
//     Color(0xFF46EEFA),
//     Color(0xFF5FFBF1),
//   ],
// );
LinearGradient appbarGradient = const LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  transform: GradientRotation(75),
  colors: [
    Color.fromARGB(255, 95, 247, 234),
    Color.fromARGB(255, 36, 228, 253),
    Color.fromARGB(255, 161, 230, 230),
  ],
);

LinearGradient bodyBgGradient = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFFF6FFFF),
    Color(0xFFF3FDFF),
    Color(0xFFF1FBFF),
    Color(0xFFF1F9FF),
    Color(0xFFF1F6FF),
    Color(0xFFF2F5FF),
    Color(0xFFF3F5FF),
    Color(0xFFF5F4FF),
    Color(0xFFF5F6FF),
    Color(0xFFF6F8FF),
    Color(0xFFF7F9FF),
    Color(0xFFF9FBFF),
  ],
);

Color appBarBgColor1 = const Color.fromARGB(255, 135, 213, 235);

Color appBarBgColor2 = const Color(0xFFEFFAFD);

Color fonColor = const Color(0xFFA0006D);
