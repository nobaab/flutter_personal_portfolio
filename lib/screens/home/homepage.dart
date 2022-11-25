import 'package:flutter/material.dart';
import 'package:personal_portfolio/responsive/responsive.dart';
import 'package:personal_portfolio/screens/home/home_desktop.dart';

import 'home_mobile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobileView: HomeMobile(),
      tabletView: HomeMobile(),
      desktopView: HomeDesktop(),
    );
  }
}
