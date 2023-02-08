import 'package:flutter/material.dart';
import 'package:personal_portfolio/responsive/responsive.dart';

import 'footer_web.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobileView: FooterWeb(),
      desktopView: FooterWeb(),
      tabletView: FooterWeb(),
    );
  }
}
