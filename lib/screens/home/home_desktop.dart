import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:personal_portfolio/config/constants/colors.dart';
import 'package:personal_portfolio/config/constants/string_config.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text("Hi, I am $name", style: TextStyle(color: neonColor, fontSize: 18, fontFamily: 'sfmono')),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset("assets/gifs/wavehello.gif", width: 35.0, height: 35.0)
                      ],
                    ),
                    Text(
                      "I build things for Mobile.",
                      style: GoogleFonts.robotoSlab(
                        color: textLight,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                        fontSize: 50,
                      ),
                    ),
                    Text(
                      "I am a software Engineer. Currently working on building mobile applications using flutter.",
                      style: GoogleFonts.roboto(
                        color: textLight,
                        letterSpacing: 1,
                        height: 1.5,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Lottie.asset(
                      'assets/images/mobile.json',
                      repeat: true,
                      reverse: true,
                      animate: true,
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
