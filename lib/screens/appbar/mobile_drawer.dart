import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personal_portfolio/config/constants/colors.dart';

import '../../blocs/hover/hover_bloc.dart';
import '../../config/constants/fonts.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HoverBloc, HoverState>(
      builder: (context, state) {
        return Drawer(
          backgroundColor: backgroundColor,
          child: ListView(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    onHover: (value) {
                      if (value) {
                        BlocProvider.of<HoverBloc>(context)
                            .add(HomeButtonEvent());
                      } else {
                        BlocProvider.of<HoverBloc>(context)
                            .add(HoverOutEvent());
                      }
                    },
                    child: Text(
                      " HOME ",
                      style: listPageTitleStyle(
                          color: state is HomeButtonState
                              ? state.color
                              : appBarColor),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    onHover: (value) {
                      if (value) {
                        BlocProvider.of<HoverBloc>(context)
                            .add(AboutButtonEvent());
                      } else {
                        BlocProvider.of<HoverBloc>(context)
                            .add(HoverOutEvent());
                      }
                    },
                    child: Text(
                      " ABOUT ",
                      style: listPageTitleStyle(
                          color: state is AboutButtonState
                              ? state.color
                              : appBarColor),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    onHover: (value) {
                      if (value) {
                        BlocProvider.of<HoverBloc>(context)
                            .add(ServiceButtonEvent());
                      } else {
                        BlocProvider.of<HoverBloc>(context)
                            .add(HoverOutEvent());
                      }
                    },
                    child: Text(
                      " SERVICES ",
                      style: listPageTitleStyle(
                          color: state is ServiceButtonState
                              ? state.color
                              : appBarColor),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    onHover: (value) {
                      if (value) {
                        BlocProvider.of<HoverBloc>(context)
                            .add(ProjectButtonEvent());
                      } else {
                        BlocProvider.of<HoverBloc>(context)
                            .add(HoverOutEvent());
                      }
                    },
                    child: Text(
                      " PROJECTS ",
                      style: listPageTitleStyle(
                          color: state is ProjectButtonState
                              ? state.color
                              : appBarColor),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    onHover: (value) {
                      if (value) {
                        BlocProvider.of<HoverBloc>(context)
                            .add(ContactButtonEvent());
                      } else {
                        BlocProvider.of<HoverBloc>(context)
                            .add(HoverOutEvent());
                      }
                    },
                    child: Text(
                      " CONTACT ",
                      style: listPageTitleStyle(
                          color: state is ContactButtonState
                              ? state.color
                              : appBarColor),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(3.0)),
                        border: Border.all(color: neonColor, width: 1.5)),
                    child: const Center(
                      child: Text('Resume',
                          style: TextStyle(
                              color: neonColor,
                              fontSize: 13,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'sfmono')),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
