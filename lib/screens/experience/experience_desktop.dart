import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/constants/colors.dart';

class ExperienceDesktop extends StatelessWidget {
  const ExperienceDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                    text: "02.",
                    style: const TextStyle(
                        color: neonColor, fontSize: 20, fontFamily: 'sfmono'),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Where I’ve Worked",
                        style: GoogleFonts.robotoSlab(
                            color: Colors.white,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      )
                    ]),
              ),
              Container(
                height: 0.5,
                margin: const EdgeInsets.only(left: 15),
                width: MediaQuery.of(context).size.width * 0.2,
                color: textLight,
              )
            ],
          ),
          ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [],
                  ),
                );
              }),
        ],
      ),
    );
  }
}
