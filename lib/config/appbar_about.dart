import 'package:flutter/material.dart';
import 'constants/colors.dart';
import 'constants/fonts.dart';

class AppbarWidget extends StatelessWidget {
  final String appbarText;

  const AppbarWidget({Key? key, required this.appbarText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            " $appbarText ",
            style: listPageTitleStyle(color: appBarColor),
          ),
        )
      ],
    );
  }
}
