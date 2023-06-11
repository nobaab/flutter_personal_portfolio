import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/blocs/hover/hover_bloc.dart';
import 'package:personal_portfolio/responsive/responsive.dart';
import 'package:personal_portfolio/screens/aboutme/about.dart';
import 'package:personal_portfolio/screens/appbar/mobile_drawer.dart';
import 'package:personal_portfolio/screens/contact/contract.dart';
import 'package:personal_portfolio/screens/experience/experience.dart';
import 'package:personal_portfolio/screens/footer/footer.dart';
import 'package:personal_portfolio/screens/home/homepage.dart';
import 'package:personal_portfolio/screens/work/work.dart';
import 'package:personal_portfolio/widgets/left_slider.dart';
import 'package:personal_portfolio/widgets/right_slider.dart';
import 'package:sizer/sizer.dart';
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
            centerTitle: false,
            title: Text(
              '$name ()',
              style: GoogleFonts.patrickHand(
                textStyle: const TextStyle(color: neonColor, letterSpacing: .5),
              ),
            ),
            actions: [
              !Responsive.isMobile(context) && !Responsive.isTablet(context)
                  ? const Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Row(
                        children: [
                          AppbarWidget(),
                        ],
                      ))
                  : const SizedBox()
            ],
          ),
          body: Container(
            color: backgroundColor,
            child: Row(
              children: [
                Responsive.isMobile(context) || Responsive.isTablet(context) ? const SizedBox() : const LeftSlide(),
                Expanded(
                    flex: 8,
                    child: ListView(
                      children: [
                        const HomePage(),
                        const About(),
                        SizedBox(
                          height: 5.h,
                        ),
                        const Experience(),
                        SizedBox(
                          height: 5.h,
                        ),
                        const Work(),
                        SizedBox(
                          height: 5.h,
                        ),
                        const Contract(),
                        SizedBox(
                          height: 15.h,
                        ),
                        const Footer()
                      ],
                    )),
                Responsive.isMobile(context) || Responsive.isTablet(context) ? const SizedBox() : const RightSlide()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
