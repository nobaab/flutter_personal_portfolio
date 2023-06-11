import 'package:flutter/material.dart';
import 'package:personal_portfolio/responsive/responsive.dart';
import 'package:personal_portfolio/screens/work/work_desktop.dart';
import 'package:personal_portfolio/screens/work/work_mobile.dart';

class Work extends StatelessWidget {
  const Work({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobileView: WorkMobile(),
      desktopView: WorkDesktop(),
      tabletView: WorkDesktop(),
    );
  }
}
