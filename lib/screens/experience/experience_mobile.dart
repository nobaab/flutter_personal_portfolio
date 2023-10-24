import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/blocs/hover/hover_bloc.dart';
import 'package:personal_portfolio/config/constants/colors.dart';
import 'package:sizer/sizer.dart';

import 'data/model/exp_model.dart';

class ExperienceMobile extends StatelessWidget {
  const ExperienceMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HoverBloc()..add(DataLoadEvent(experienceData: ExperienceModel(), selectedIndex: 0)),
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                      text: "02.",
                      style: const TextStyle(color: neonColor, fontSize: 20, fontFamily: 'sfmono'),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Where I’ve Worked",
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
            const SizedBox(
              height: 35,
            ),
            BlocConsumer<HoverBloc, HoverState>(
              listener: ((context, state) {
                if (state is DataLoadedState) {}
              }),
              builder: (context, state) {
                if (state is DataLoadedState) {
                  return Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListView.builder(
                                itemCount: experience.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {
                                      BlocProvider.of<HoverBloc>(context)
                                          .add(DataLoadEvent(experienceData: ExperienceModel(), selectedIndex: index));
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 10),
                                      alignment: Alignment.centerLeft,
                                      height: MediaQuery.of(context).size.height * 0.05,
                                      width: MediaQuery.of(context).size.width * 0.01,
                                      decoration: BoxDecoration(
                                          color: state.selectedIndex == index ? state.color : Colors.transparent,
                                          border: Border(
                                              left: BorderSide(
                                                  color: state.selectedIndex == index ? neonColor : textLight, width: 1))),
                                      child: Text(
                                        "${experience[index].companyName}",
                                        style: TextStyle(
                                            color: state.selectedIndex == index ? neonColor : textLight,
                                            fontSize: 13,
                                            fontFamily: 'sfmono'),
                                      ),
                                    ),
                                  );
                                })
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BlocBuilder<HoverBloc, HoverState>(
                              builder: (context, state) {
                                if (state is DataLoadedState) {
                                  return SizedBox(
                                    // color:
                                    //     experience[state.selectedIndex].color!,
                                    height: MediaQuery.of(context).size.height * 0.35,
                                    width: MediaQuery.of(context).size.width * 1,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Wrap(
                                          children: [
                                            Text(
                                              experience[state.selectedIndex].position!,
                                              style: GoogleFonts.robotoSlab(
                                                  color: headerColor,
                                                  letterSpacing: 1,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "@ ${experience[state.selectedIndex].companyName!}",
                                              style: GoogleFonts.robotoSlab(
                                                  color: neonColor,
                                                  letterSpacing: 1,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          experience[state.selectedIndex].year!,
                                          style: const TextStyle(
                                              color: textLight,
                                              letterSpacing: 1,
                                              height: 1.5,
                                              fontSize: 13,
                                              fontFamily: 'sfmono'),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        ListView.separated(
                                            separatorBuilder: (context, index) {
                                              return const SizedBox(
                                                height: 5,
                                              );
                                            },
                                            shrinkWrap: true,
                                            itemCount: experience[state.selectedIndex].detailsInfo!.length,
                                            itemBuilder: (context, detailsIndex) {
                                              return Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Expanded(
                                                    flex: 0,
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets.only(right: 5.0),
                                                          child: Icon(
                                                            Icons.arrow_right,
                                                            color: neonColor,
                                                            size: 20,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 5,
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                          experience[state.selectedIndex]
                                                              .detailsInfo![detailsIndex]
                                                              .detailsData!,
                                                          style: const TextStyle(
                                                              color: textLight, fontSize: 14, fontFamily: 'sfmono'),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              );
                                            }),
                                      ],
                                    ),
                                  );
                                }
                                return const Text("Data GG");
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                }
                return const Text("GG Not Found");
              },
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
