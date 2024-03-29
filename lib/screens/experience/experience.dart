import 'package:flutter/material.dart';
import 'package:personal_portfolio/responsive/responsive.dart';
import 'package:personal_portfolio/screens/experience/experience_desktop.dart';

import 'experience_mobile.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobileView: ExperienceMobile(),
      desktopView: ExperienceDesktop(),
      tabletView: ExperienceDesktop(),
    );
  }
}
