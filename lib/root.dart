import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/blocs/hover/hover_bloc.dart';
import 'package:personal_portfolio/responsive/responsive.dart';
import 'package:personal_portfolio/screens/aboutme/about.dart';
import 'package:personal_portfolio/screens/appbar/mobile_drawer.dart';
import 'package:personal_portfolio/screens/home/homepage.dart';
import 'package:personal_portfolio/widgets/left_slider.dart';
import 'package:personal_portfolio/widgets/right_slider.dart';
import 'screens/appbar/appbar_desktop.dart';
import 'config/constants/colors.dart';
import 'config/constants/string_config.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => HoverBloc(),
        child: Scaffold(
          drawer: !Responsive.isDesktop(context) ? const MobileDrawer() : null,
          appBar: AppBar(
            backgroundColor: backgroundColor,
            title: Text(
              '$name ()',
              style: GoogleFonts.patrickHand(
                textStyle: const TextStyle(color: neonColor, letterSpacing: .5),
              ),
            ),
            actions: [
              !Responsive.isMobile(context) && !Responsive.isTablet(context)
                  ? Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Row(
                        children: const [
                          AppbarWidget(),
                        ],
                      ))
                  : const SizedBox()
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
              children: [
                Responsive.isMobile(context) || Responsive.isTablet(context)
                    ? const SizedBox()
                    : const LeftSlide(),
                Expanded(
                    flex: 8,
                    child: ListView(
                      children: const [
                        HomePage(),
                        About(),
                        SizedBox(
                          height: 50,
                        )
                      ],
                    )),
                Responsive.isMobile(context) || Responsive.isTablet(context)
                    ? const SizedBox()
                    : const RightSlide()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
