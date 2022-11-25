// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobileView;
  final Widget tabletView;
  final Widget desktopView;
  const Responsive({
    Key? key,
    required this.mobileView,
    required this.tabletView,
    required this.desktopView,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1000 &&
      MediaQuery.of(context).size.width >= 600;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1000;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1000) {
          return desktopView;
        } else if (constraints.maxWidth >= 600) {
          return tabletView;
        } else {
          return mobileView;
        }
      },
    );
  }
}
