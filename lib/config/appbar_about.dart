import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/hover/hover_bloc.dart';
import 'constants/colors.dart';
import 'constants/fonts.dart';

class AppbarWidget extends StatelessWidget {
  //final String appbarText;

  const AppbarWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HoverBloc, HoverState>(
      builder: (context, state) {
        return Row(
          children: [
            TextButton(
              onPressed: () {},
              onHover: (value) {
                if (value) {
                  BlocProvider.of<HoverBloc>(context).add(HomeButtonEvent());
                } else {
                  BlocProvider.of<HoverBloc>(context).add(HoverOutEvent());
                }
              },
              child: Text(
                " HOME ",
                style: listPageTitleStyle(
                    color:
                        state is HomeButtonState ? state.color : appBarColor),
              ),
            ),
            TextButton(
              onPressed: () {},
              onHover: (value) {
                if (value) {
                  BlocProvider.of<HoverBloc>(context).add(AboutButtonEvent());
                } else {
                  BlocProvider.of<HoverBloc>(context).add(HoverOutEvent());
                }
              },
              child: Text(
                " ABOUT ",
                style: listPageTitleStyle(
                    color:
                        state is AboutButtonState ? state.color : appBarColor),
              ),
            ),
            TextButton(
              onPressed: () {},
              onHover: (value) {
                if (value) {
                  BlocProvider.of<HoverBloc>(context).add(ServiceButtonEvent());
                } else {
                  BlocProvider.of<HoverBloc>(context).add(HoverOutEvent());
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
                  BlocProvider.of<HoverBloc>(context).add(ProjectButtonEvent());
                } else {
                  BlocProvider.of<HoverBloc>(context).add(HoverOutEvent());
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
                  BlocProvider.of<HoverBloc>(context).add(ContactButtonEvent());
                } else {
                  BlocProvider.of<HoverBloc>(context).add(HoverOutEvent());
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
          ],
        );
      },
    );
  }
}
