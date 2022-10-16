import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/config/appbar_about.dart';
import 'package:personal_portfolio/config/constants/colors.dart';
import 'package:personal_portfolio/config/constants/string_config.dart';
import 'package:vertical_tabs_flutter/vertical_tabs.dart';

import '../config/constants/fonts.dart';
import '../config/tecs.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                    ...NavBarName.names
                        .map((e) => AppbarWidget(appbarText: e))
                        .toList(),
                    const SizedBox(
                      width: 20,
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
                )),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(150, 20, 150, 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Hi, I am $name",
                      style: GoogleFonts.patrickHand(
                        textStyle: const TextStyle(
                            fontSize: 30, color: textColor, letterSpacing: .5),
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
                          height: 30,
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
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("assets/gifs/modules.gif",
                            height: 500, width: 500),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text(
                            "About",
                            style: TextStyle(
                                color: textColor,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            color: bigText,
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: 1,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "$aboutme",
                                  style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                        fontSize: 17,
                                        color: bigText,
                                        letterSpacing: .5),
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                const Divider(color: bigText, thickness: 1),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Here is the few technology i know",
                                  style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(
                                        fontSize: 17,
                                        color: bigText,
                                        letterSpacing: .5),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: techLan
                                      .map((e) => Techs(
                                            languageTech: e,
                                          ))
                                      .toList(),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(70)),
                                  child: Image.asset(
                                    "assets/images/mine.jpg",
                                    height: 500,
                                    width: 500,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),

                      Row(
                        children: [
                          SizedBox(
                            height: 500,
                            width: 500,
                            child: VerticalTabs(
                              indicatorColor: textColor,
                              tabBackgroundColor: backgroundColor,
                              backgroundColor: Colors.transparent,
                              tabsWidth: 150,
                              tabs: const <Tab>[
                                Tab(
                                    child: Text('Flutter'),
                                    icon: Icon(Icons.phone)),
                                Tab(child: Text('Dart')),
                                Tab(child: Text('NodeJS')),
                                Tab(child: Text('PHP')),
                                Tab(child: Text('HTML 5')),
                              ],
                              contents: const <Widget>[
                                Text('Flutter'),
                                Text('Dart'),
                                Text('NodeJS'),
                                Text('PHP'),
                                Text('HTML 5')
                              ],
                            ),
                          ),
                        ],
                      ),

                      // Row(
                      //   children: [
                      //     RotatedBox(
                      //       quarterTurns: 3,
                      //       child: SizedBox(
                      //         height: 500,
                      //         width: 500,
                      //         child: DefaultTabController(
                      //           length: 5,
                      //           initialIndex: 4,
                      //           child: Column(
                      //             children: [
                      //               const TabBar(
                      //                 labelColor: textColor,
                      //                 unselectedLabelColor: bigText,
                      //                 indicatorColor: textColor,
                      //                 tabs: [
                      //                   Tab(text: 'WEEK'),
                      //                   Tab(text: 'WEEK'),
                      //                   Tab(text: 'WEEK'),
                      //                   Tab(text: 'WEEK'),
                      //                   Tab(text: 'WEEK'),
                      //                 ],
                      //               ),
                      //               Expanded(
                      //                 child: Container(
                      //                     decoration: const BoxDecoration(
                      //                         border: Border(
                      //                             top: BorderSide(
                      //                                 color: Colors.grey,
                      //                                 width: 0.5))),
                      //                     child: const TabBarView(
                      //                         children: <Widget>[
                      //                           Tab1(),
                      //                           Tab1(),
                      //                           Tab1(),
                      //                           Tab1(),
                      //                           Tab1(),
                      //                         ])),
                      //               )
                      //             ],
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ],
            ),
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
      ),
    );
  }
}

class Tab1 extends StatelessWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: const [
        SizedBox(
          height: 20,
        ),
        RotatedBox(
          quarterTurns: 1,
          child: Text(
            "GGWP",
            style: TextStyle(color: Colors.red),
          ),
        )
      ],
    );
  }
}
