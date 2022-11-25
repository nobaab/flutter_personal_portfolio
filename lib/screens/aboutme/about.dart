import 'package:flutter/material.dart';
import 'package:personal_portfolio/responsive/responsive.dart';
import 'package:personal_portfolio/screens/aboutme/about_desktop.dart';
import 'package:personal_portfolio/screens/aboutme/about_mobile.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobileView: AboutMeMobile(),
      desktopView: AboutMeDesktop(),
      tabletView: AboutMeMobile(),
    );
  }
}
