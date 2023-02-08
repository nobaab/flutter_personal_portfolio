import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:personal_portfolio/config/constants/string_config.dart';
import 'package:sizer/sizer.dart';

import '../../config/constants/colors.dart';

class FooterWeb extends StatelessWidget {
  const FooterWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Designed & Built by $name", style: GoogleFonts.robotoSlab(color: textLight, letterSpacing: 1, fontSize: 12)),
        SizedBox(
          height: 1.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Made With", style: GoogleFonts.robotoSlab(color: textLight, letterSpacing: 1, fontSize: 12)),
            Lottie.asset(
              'assets/images/flutter.json',
              height: 2.h,
              width: 2.w,
              repeat: true,
              reverse: true,
              animate: true,
            ),
          ],
        ),
        SizedBox(
          height: 1.h,
        ),
        Text("UI Concept From Brittany Chiang",
            style: GoogleFonts.robotoSlab(color: textLight, letterSpacing: 1, fontSize: 12)),
        SizedBox(
          height: 3.h,
        ),
      ],
    );
  }
}
