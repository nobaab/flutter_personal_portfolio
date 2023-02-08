import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:personal_portfolio/config/constants/colors.dart';

import '../blocs/hover/hover_bloc.dart';

class LeftSlide extends StatelessWidget {
  const LeftSlide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HoverBloc, HoverState>(
      builder: (context, state) {
        return Expanded(
          flex: 1,
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.07,
                        child: InkWell(
                          onTap: () {},
                          onHover: (value) {
                            if (value) {
                              BlocProvider.of<HoverBloc>(context).add(GithubHoverEvent());
                            } else {
                              BlocProvider.of<HoverBloc>(context).add(HoverOutEvent());
                            }
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: state is GithubHoverState ? state.size : 0),
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: SvgPicture.asset('assets/svgicons/github.svg',
                                color: state is GithubHoverState ? state.color : appBarColor, width: 22),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.07,
                        child: InkWell(
                          onTap: () {},
                          onHover: (value) {
                            if (value) {
                              BlocProvider.of<HoverBloc>(context).add(InstaHoverEvent());
                            } else {
                              BlocProvider.of<HoverBloc>(context).add(HoverOutEvent());
                            }
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: state is InstaHoverState ? state.size : 0),
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: SvgPicture.asset('assets/svgicons/instagram.svg',
                                color: state is InstaHoverState ? state.color : appBarColor, width: 22),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.07,
                        child: InkWell(
                          onTap: () {},
                          onHover: (value) {
                            if (value) {
                              BlocProvider.of<HoverBloc>(context).add(LinkedInHoverEvent());
                            } else {
                              BlocProvider.of<HoverBloc>(context).add(HoverOutEvent());
                            }
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: state is LinkedInHoverState ? state.size : 0),
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: SvgPicture.asset('assets/svgicons/linkedIn.svg',
                                color: state is LinkedInHoverState ? state.color : appBarColor, width: 22),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.07,
                        child: InkWell(
                          onTap: () {},
                          onHover: (value) {
                            if (value) {
                              BlocProvider.of<HoverBloc>(context).add(TwitterHoverEvent());
                            } else {
                              BlocProvider.of<HoverBloc>(context).add(HoverOutEvent());
                            }
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: state is TwitterHoverState ? state.size : 0),
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: SvgPicture.asset('assets/svgicons/twitter.svg',
                                color: state is TwitterHoverState ? state.color : appBarColor, width: 22),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.07,
                        child: InkWell(
                          onTap: () {},
                          onHover: (value) {
                            if (value) {
                              BlocProvider.of<HoverBloc>(context).add(StackHoverEvent());
                            } else {
                              BlocProvider.of<HoverBloc>(context).add(HoverOutEvent());
                            }
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: state is StackHoverState ? state.size : 0),
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: SvgPicture.asset('assets/svgicons/stackoverflow.svg',
                                color: state is StackHoverState ? state.color : appBarColor, width: 22),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
