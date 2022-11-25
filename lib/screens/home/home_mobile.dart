import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/constants/colors.dart';
import '../../config/constants/string_config.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              const Text("Hi, I am $name",
                  style: TextStyle(
                      color: neonColor, fontSize: 16, fontFamily: 'sfmono')),
              const SizedBox(
                width: 10,
              ),
              Image.asset("assets/gifs/wavehello.gif",
                  width: 35.0, height: 35.0)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "I build things for Mobile.",
                      style: GoogleFonts.robotoSlab(
                        color: textLight,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      "I am a software Engineer. Currently working on building mobile applications using flutter.",
                      style: GoogleFonts.roboto(
                        color: textLight,
                        letterSpacing: 1,
                        height: 1.5,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
