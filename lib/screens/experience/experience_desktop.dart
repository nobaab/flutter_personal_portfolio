import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/constants/colors.dart';

class ExperienceDesktop extends StatelessWidget {
  const ExperienceDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

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
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    ListView.builder(
                        itemCount: 5,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            height: MediaQuery.of(context).size.height * 0.07,
                            decoration: const BoxDecoration(color: Colors.blue),
                            child: Text("${index + 1}"),
                          );
                        })
                  ],
                ),
              ),
              Expanded(
                flex: 8,
                child: Column(
                  children: [
                    Container(
                      color: Colors.red,
                      height: MediaQuery.of(context).size.height * 0.35,
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
