import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/appbar/appbar_bloc.dart';
import '../config/constants/colors.dart';

class RightSlide extends StatefulWidget {
  const RightSlide({Key? key}) : super(key: key);

  @override
  State<RightSlide> createState() => _RightSlideState();
}

class _RightSlideState extends State<RightSlide> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppbarBloc, AppbarState>(
      builder: (context, state) {
        return Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {},
                        onHover: (value) {
                          if (value) {
                            BlocProvider.of<AppbarBloc>(context)
                                .add(EmailHoverEvent());
                          } else {
                            BlocProvider.of<AppbarBloc>(context)
                                .add(HoverOutEvent());
                          }
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                              bottom:
                                  state is EmailHoverState ? state.size : 0),
                          padding: const EdgeInsets.only(bottom: 25),
                          child: RotatedBox(
                              quarterTurns: 1,
                              child: Text(
                                'mozammel990@gmail.com',
                                style: TextStyle(
                                    letterSpacing: 1,
                                    color: state is EmailHoverState
                                        ? state.color
                                        : appBarColor,
                                    fontSize: 14,
                                    fontFamily: 'sfmono'),
                              )),
                        ),
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
        );
      },
    );
  }
}
