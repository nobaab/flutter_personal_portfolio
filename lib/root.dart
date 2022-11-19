import 'package:flutter/material.dart';
import 'package:personal_portfolio/screens/homepage.dart';
import 'package:personal_portfolio/widgets/right_slider.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Expanded(
          child: Row(
            children: [
              Expanded(flex: 8, child: HomePage()),
            ],
          ),
        ),
      ),
    );
  }
}
