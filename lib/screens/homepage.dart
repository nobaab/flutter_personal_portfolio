import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/config/constants/colors.dart';
import 'package:personal_portfolio/config/constants/string_config.dart';

import '../config/constants/fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text(
          '$name ()',
          style: GoogleFonts.patrickHand(
            textStyle: const TextStyle(color: textColor, letterSpacing: .5),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Colors.yellow;
                      }
                      return Colors.blue;
                    }),
                  ),
                  child: Text(
                    "About",
                    style: listPageTitleStyle,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  "Experince",
                  style: listPageTitleStyle,
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  "Work",
                  style: listPageTitleStyle,
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  "Contact",
                  style: listPageTitleStyle,
                ),
                const SizedBox(
                  width: 15,
                ),
                SizedBox(
                  height: 30,
                  width: 100,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: backgroundColor,
                          side: const BorderSide(color: textColor)
                          // Background color
                          ),
                      onPressed: () {},
                      child: Text(
                        "Resume",
                        style: listPageTitleStyle,
                      )),
                )
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(80, 20, 80, 0),
        child: Row(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Hi, I am $name",
                        style: GoogleFonts.patrickHand(
                          textStyle: const TextStyle(
                              fontSize: 30,
                              color: textColor,
                              letterSpacing: .5),
                        ),
                      ),
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "I build things for Mobile.",
                            style: TextStyle(
                                fontSize: 50,
                                color: bigText,
                                fontWeight: FontWeight.w700),
                          ),
                          const Text(
                            "I am a software Engineer. Currently working on building mobile applications using flutter.",
                            style: TextStyle(color: bigText),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/svgicons/icons8-github.svg",
                                color: iconColor,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              SvgPicture.asset(
                                "assets/svgicons/icons8-facebook.svg",
                                color: iconColor,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              SvgPicture.asset(
                                "assets/svgicons/icons8-instagram.svg",
                                color: iconColor,
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      Column(
                        children: [
                          Image.asset(
                            "assets/gifs/modules.gif",
                            height: 500,
                            width: 500,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "Made With Flutter by $fullname",
            style: TextStyle(color: bigText),
          )
        ],
      ),
    );
  }
}
