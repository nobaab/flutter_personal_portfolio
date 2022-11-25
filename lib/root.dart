import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/screens/homepage.dart';
import 'package:personal_portfolio/widgets/left_slider.dart';
import 'package:personal_portfolio/widgets/right_slider.dart';
import 'blocs/appbar/appbar_bloc.dart';
import 'config/appbar_about.dart';
import 'config/constants/colors.dart';
import 'config/constants/string_config.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => AppbarBloc(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: backgroundColor,
            title: Text(
              '$name ()',
              style: GoogleFonts.patrickHand(
                textStyle: const TextStyle(color: neonColor, letterSpacing: .5),
              ),
            ),
            actions: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Row(
                    children: [
                      const AppbarWidget(),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(3.0)),
                            border: Border.all(color: neonColor, width: 1.5)),
                        child: const Center(
                          child: Text('Resume',
                              style: TextStyle(
                                  color: neonColor,
                                  fontSize: 13,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'sfmono')),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
          body: Container(
            color: backgroundColor,
            // decoration: const BoxDecoration(
            //     gradient: LinearGradient(
            //         begin: Alignment.bottomCenter,
            //         end: Alignment.topCenter,
            //         colors: [
            //       Color(0xff112240),
            //       Color(0xff0a192f),
            //       Color(0xff020c1b)
            //     ])),
            child: Row(
              children: const [
                LeftSlide(),
                Expanded(flex: 8, child: HomePage()),
                RightSlide()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
