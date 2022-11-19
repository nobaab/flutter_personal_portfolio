import 'package:flutter/material.dart';

import '../config/constants/colors.dart';

class RightSlide extends StatefulWidget {
  const RightSlide({Key? key}) : super(key: key);

  @override
  State<RightSlide> createState() => _RightSlideState();
}

class _RightSlideState extends State<RightSlide> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(bottom: 25),
                      child: RotatedBox(
                          quarterTurns: 1,
                          child: Text(
                            'mozammel990@gmail.com',
                            style: TextStyle(
                                letterSpacing: 1,
                                color: appBarColor,
                                fontSize: 14,
                                fontFamily: 'sfmono'),
                          )),
                    )
                  ],
                )),
            Expanded(
                child: Container(
              width: 1,
              color: Colors.white,
            ))
          ],
        ),
      ),
    );
  }
}
