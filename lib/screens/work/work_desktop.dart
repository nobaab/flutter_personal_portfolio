import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/utils/debugger/debugger.dart';
import 'package:sizer/sizer.dart';

import '../../blocs/hover/hover_bloc.dart';
import '../../config/constants/colors.dart';
import 'data/model/work_model.dart';

class WorkDesktop extends StatelessWidget {
  const WorkDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var maxlength = 6;

    return BlocProvider(
      create: (context) => HoverBloc()..add(WorkDataLoadEvent(workData: WorkResponseModel(techInfo: []))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
        child: Column(
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                      text: "03.",
                      style: const TextStyle(color: neonColor, fontSize: 20, fontFamily: 'sfmono'),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Some Things I’ve Built",
                          style: GoogleFonts.robotoSlab(
                              color: headerColor, letterSpacing: 1, fontWeight: FontWeight.bold, fontSize: 25),
                        )
                      ]),
                ),
                Container(
                  height: 0.5,
                  margin: const EdgeInsets.only(left: 15),
                  width: MediaQuery.of(context).size.width * 0.2,
                  color: textLight,
                )
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            BlocBuilder<HoverBloc, HoverState>(
              builder: (context, state) {
                Debugger("STATE>>>>>>> $state");
                if (state is WorkDataLoadedState ||
                    state is WorkImageState ||
                    state is GridViewState ||
                    state is HoverOutState ||
                    state is WorkContainerState ||
                    state is GithubHoverState) {
                  return Column(
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: works.where((work) => work.featured == true).length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final featuredWorks = works.where((work) => work.featured == true).toList();
                          final currentWork = featuredWorks[index];
                          return index % 2 == 0
                              ? Row(
                                  children: [
                                    SizedBox(
                                      height: 60.h,
                                      width: 70.w,
                                      child: Stack(
                                        children: [
                                          Positioned.fill(
                                            child: Align(
                                              alignment: index != 2 ? Alignment.topLeft : Alignment.topLeft,
                                              child: InkWell(
                                                onTap: () {},
                                                onHover: ((value) {
                                                  if (value) {
                                                    BlocProvider.of<HoverBloc>(context)
                                                        .add(WorkImageEvent(selectedIndex: index));
                                                  } else {
                                                    BlocProvider.of<HoverBloc>(context).add(HoverOutEvent());
                                                  }
                                                }),
                                                child: Container(
                                                  height: 50.h,
                                                  width: 35.w,
                                                  decoration: BoxDecoration(
                                                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                                                    image: DecorationImage(
                                                      fit: BoxFit.fill,
                                                      colorFilter: state is WorkImageState && state.selectedIndex == index
                                                          ? null // Remove the color filter when the image is selected
                                                          : const ColorFilter.mode(Color(0xFF1d4652), BlendMode.lighten),
                                                      image: works[index].image!,
                                                    ),
                                                    color: Colors.transparent,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            right: 180,
                                            top: 110,
                                            child: Container(
                                              height: 50.h,
                                              width: 30.w,
                                              color: Colors.transparent,
                                              child: Column(
                                                children: [
                                                  const Align(
                                                    alignment: Alignment.topRight,
                                                    child: Text(
                                                      "Featured Project",
                                                      style: TextStyle(color: neonColor, fontSize: 22),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 0.5.h,
                                                  ),
                                                  Align(
                                                    alignment: Alignment.topRight,
                                                    child: Text(
                                                      currentWork.projectName!,
                                                      style: GoogleFonts.robotoSlab(
                                                          color: headerColor,
                                                          letterSpacing: 1,
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 25),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 2.h,
                                                  ),
                                                  InkWell(
                                                    onTap: () {},
                                                    onHover: ((value) {
                                                      if (value) {
                                                        BlocProvider.of<HoverBloc>(context)
                                                            .add(WorkContainerEvent(selectedIndex: index));
                                                      } else {
                                                        BlocProvider.of<HoverBloc>(context).add(HoverOutEvent());
                                                      }
                                                    }),
                                                    child: Container(
                                                      height: 13.h,
                                                      width: 30.w,
                                                      padding: const EdgeInsets.all(30),
                                                      decoration: BoxDecoration(
                                                          boxShadow: [
                                                            state is WorkContainerState
                                                                ? (state.selectedIndex == index
                                                                    ? const BoxShadow(
                                                                        color: Colors.black26,
                                                                        blurRadius: 10.0,
                                                                        spreadRadius: 1.0,
                                                                        offset: Offset(0.0, 0.0))
                                                                    : const BoxShadow(
                                                                        color: Colors.transparent,
                                                                        blurRadius: 0.0,
                                                                        spreadRadius: 0.0,
                                                                        offset: Offset(0.0, 0.0)))
                                                                : const BoxShadow(
                                                                    color: Colors.transparent,
                                                                    blurRadius: 0.0,
                                                                    spreadRadius: 0.0,
                                                                    offset: Offset(0.0, 0.0))
                                                          ],
                                                          color: const Color(0xFF112240),
                                                          borderRadius: const BorderRadius.all(
                                                            Radius.circular(5.0),
                                                          )),
                                                      child: Text(
                                                        currentWork.projectDescription!,
                                                        style: GoogleFonts.robotoSlab(
                                                            color: headerColor, letterSpacing: 1, fontSize: 15),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 2.h,
                                                  ),
                                                  Expanded(
                                                    child: ListView.separated(
                                                        separatorBuilder: (context, innerIndex) => SizedBox(
                                                              width: 1.w,
                                                            ),
                                                        itemCount: works[index].techInfo!.length,
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context, innerIndex) {
                                                          return Text(works[index].techInfo![innerIndex].techName!,
                                                              style: GoogleFonts.robotoSlab(
                                                                  color: headerColor, letterSpacing: 1, fontSize: 12));
                                                        }),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              : Row(
                                  children: [
                                    SizedBox(
                                      height: 60.h,
                                      width: 70.w,
                                      child: Stack(
                                        children: [
                                          Positioned.fill(
                                            child: InkWell(
                                              onTap: () {},
                                              onHover: ((value) {
                                                if (value) {
                                                  BlocProvider.of<HoverBloc>(context)
                                                      .add(WorkImageEvent(selectedIndex: index));
                                                } else {
                                                  BlocProvider.of<HoverBloc>(context).add(HoverOutEvent());
                                                }
                                              }),
                                              child: Align(
                                                alignment: Alignment.topRight,
                                                child: Container(
                                                  height: 50.h,
                                                  width: 35.w,
                                                  decoration: BoxDecoration(
                                                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                                                    image: DecorationImage(
                                                      fit: BoxFit.fill,
                                                      colorFilter: state is WorkImageState && state.selectedIndex == index
                                                          ? null // Remove the color filter when the image is selected
                                                          : const ColorFilter.mode(Color(0xFF1d4652), BlendMode.lighten),
                                                      image: works[index].image!,
                                                    ),
                                                    color: Colors.transparent,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 170,
                                            top: 110,
                                            child: Container(
                                              height: 50.h,
                                              width: 30.w,
                                              color: Colors.transparent,
                                              child: Column(
                                                children: [
                                                  const Align(
                                                    alignment: Alignment.topLeft,
                                                    child: Text(
                                                      "Featured Project",
                                                      style: TextStyle(color: neonColor, fontSize: 22),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 0.5.h,
                                                  ),
                                                  Align(
                                                    alignment: Alignment.topLeft,
                                                    child: Text(
                                                      works[index].projectName!,
                                                      style: GoogleFonts.robotoSlab(
                                                          color: headerColor,
                                                          letterSpacing: 1,
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 25),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 2.h,
                                                  ),
                                                  InkWell(
                                                    onTap: () {},
                                                    onHover: ((value) {
                                                      if (value) {
                                                        BlocProvider.of<HoverBloc>(context)
                                                            .add(WorkContainerEvent(selectedIndex: index));
                                                      } else {
                                                        BlocProvider.of<HoverBloc>(context).add(HoverOutEvent());
                                                      }
                                                    }),
                                                    child: Container(
                                                      height: 13.h,
                                                      width: 30.w,
                                                      padding: const EdgeInsets.all(30),
                                                      decoration: BoxDecoration(
                                                          boxShadow: [
                                                            state is WorkContainerState
                                                                ? (state.selectedIndex == index
                                                                    ? const BoxShadow(
                                                                        color: Colors.black26,
                                                                        blurRadius: 10.0,
                                                                        spreadRadius: 1.0,
                                                                        offset: Offset(0.0, 0.0))
                                                                    : const BoxShadow(
                                                                        color: Colors.transparent,
                                                                        blurRadius: 0.0,
                                                                        spreadRadius: 0.0,
                                                                        offset: Offset(0.0, 0.0)))
                                                                : const BoxShadow(
                                                                    color: Colors.transparent,
                                                                    blurRadius: 0.0,
                                                                    spreadRadius: 0.0,
                                                                    offset: Offset(0.0, 0.0))
                                                          ],
                                                          color: const Color(0xFF112240),
                                                          borderRadius: const BorderRadius.all(
                                                            Radius.circular(5.0),
                                                          )),
                                                      child: Text(
                                                        works[index].projectDescription!,
                                                        style: GoogleFonts.robotoSlab(
                                                            color: headerColor, letterSpacing: 1, fontSize: 15),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 2.h,
                                                  ),
                                                  Expanded(
                                                    child: ListView.separated(
                                                        separatorBuilder: (context, innerIndex) => SizedBox(
                                                              width: 1.w,
                                                            ),
                                                        itemCount: works[index].techInfo!.length,
                                                        shrinkWrap: true,
                                                        scrollDirection: Axis.horizontal,
                                                        itemBuilder: (context, innerIndex) {
                                                          return Text(works[index].techInfo![innerIndex].techName!,
                                                              style: GoogleFonts.robotoSlab(
                                                                  color: headerColor, letterSpacing: 1, fontSize: 12));
                                                        }),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                        },
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text("Other Projects",
                          style: GoogleFonts.robotoSlab(
                              color: headerColor, letterSpacing: 1, fontWeight: FontWeight.bold, fontSize: 25)),
                      SizedBox(
                        height: 2.h,
                      ),
                      GridView.builder(
                          shrinkWrap: true,
                          itemCount: works.where((work) => work.featured == false).length,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                              childAspectRatio: 1, crossAxisSpacing: 20, mainAxisSpacing: 20, maxCrossAxisExtent: 450),
                          itemBuilder: (context, gridIndex) {
                            final featuredWorks = works.where((work) => work.featured == false).toList();
                            final currentWork = featuredWorks[gridIndex];
                            return InkWell(
                              onTap: () {},
                              onHover: (value) {
                                if (value) {
                                  BlocProvider.of<HoverBloc>(context).add(GridViewEvent(
                                      selectedIndex: gridIndex, color: neonColor, padding: const EdgeInsets.all(70)));
                                } else {
                                  BlocProvider.of<HoverBloc>(context).add(HoverOutEvent());
                                }
                              },
                              child: Container(
                                margin: EdgeInsets.all(state is GridViewState
                                    ? state.selectedIndex == gridIndex
                                        ? 0
                                        : 10
                                    : 10),
                                padding: const EdgeInsets.all(30),
                                decoration: const BoxDecoration(
                                    color: Color(0xFF112240),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(5.0),
                                    )),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        SvgPicture.asset(
                                          'assets/svgicons/folder.svg',
                                          color: neonColor,
                                          height: 4.h,
                                          width: 4.w,
                                        ),
                                        InkWell(
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
                                            child: SvgPicture.asset(
                                              'assets/svgicons/github.svg',
                                              color: state is GithubHoverState ? state.color : appBarColor,
                                              height: 3.h,
                                              width: 3.w,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(currentWork.projectName!,
                                        style: GoogleFonts.robotoSlab(
                                            color: state is GridViewState
                                                ? state.selectedIndex == gridIndex
                                                    ? neonColor
                                                    : headerColor
                                                : headerColor,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25)),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Text(currentWork.projectDescription!,
                                        style: GoogleFonts.robotoSlab(color: textLight, letterSpacing: 1, fontSize: 15)),
                                    Expanded(
                                      child: ListView.separated(
                                          separatorBuilder: (context, innerIndex) => SizedBox(
                                                width: 1.w,
                                              ),
                                          itemCount: currentWork.techInfo!.length,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (context, innerIndex) {
                                            return Row(
                                              children: [
                                                Text(currentWork.techInfo![innerIndex].techName!,
                                                    style: GoogleFonts.robotoSlab(
                                                        color: headerColor, letterSpacing: 1, fontSize: 12)),
                                              ],
                                            );
                                          }),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ],
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            SizedBox(
              height: 2.h,
            ),
            // InkWell(
            //   onTap: () {
            //     BlocProvider.of<HoverBloc>(context).add(LoadMoreEvent(length: maxlength += 3));
            //   },
            //   child: Container(
            //     height: 6.h,
            //     width: 6.w,
            //     decoration: BoxDecoration(
            //         color: Colors.transparent,
            //         borderRadius: const BorderRadius.all(Radius.circular(3.0)),
            //         border: Border.all(color: neonColor, width: 1.5)),
            //     child: const Center(
            //       child: Text('Show More',
            //           style: TextStyle(
            //               color: neonColor,
            //               fontSize: 13,
            //               letterSpacing: 1,
            //               fontWeight: FontWeight.bold,
            //               fontFamily: 'sfmono')),
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 2.h,
            ),
          ],
        ),
      ),
    );
  }
}
