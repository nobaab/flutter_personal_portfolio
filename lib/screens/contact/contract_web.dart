import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../config/constants/colors.dart';

class ContractWeb extends StatelessWidget {
  const ContractWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('What’s Next?', style: GoogleFonts.robotoSlab(color: neonColor, letterSpacing: 1, fontSize: 12)),
        SizedBox(
          height: 2.h,
        ),
        Text("Get In Touch",
            style: GoogleFonts.robotoSlab(color: headerColor, fontWeight: FontWeight.bold, letterSpacing: 1, fontSize: 25)),
        SizedBox(
          height: 2.h,
        ),
        SizedBox(
          height: 10.h,
          width: 30.w,
          child: Text(
              'I am always open to new opportunities and connecting with like-minded individuals. If you have a question or simply want to reach out, my inbox is always open. Feel free to send me a message and I will respond as soon as I can.',
              style: GoogleFonts.robotoSlab(color: textLight, letterSpacing: 1, fontSize: 15)),
        ),
        InkWell(
          onTap: () async {
            const email = 'mailto:example@mail.com';
            if (await canLaunchUrl(Uri.parse(email))) {
              await launchUrl(Uri.parse(email));
            } else {
              throw 'Could not launch $email';
            }
          },
          child: Container(
            height: MediaQuery.sizeOf(context).height * 0.05,
            width: MediaQuery.sizeOf(context).width * 0.1,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: const BorderRadius.all(Radius.circular(3.0)),
                border: Border.all(color: neonColor, width: 1.5)),
            child: Center(
              child: Text('Say Hello!',
                  style: TextStyle(
                      color: neonColor,
                      fontSize: 3.sp,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'sfmono')),
            ),
          ),
        ),
      ],
    );
  }
}
