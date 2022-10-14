import 'package:flutter/material.dart';

import 'constants/colors.dart';

class Techs extends StatelessWidget {
  final String languageTech;

  const Techs({Key? key, required this.languageTech}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.play_arrow,
          color: textColor,
          size: 10,
        ),
        Text(
          " $languageTech ",
          style: const TextStyle(color: bigText, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
