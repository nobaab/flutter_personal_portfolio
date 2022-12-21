import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../blocs/hover/hover_bloc.dart';
import '../../config/constants/colors.dart';
import '../../models/exp_model.dart';

class ExperienceDesktop extends StatelessWidget {
  ExperienceDesktop({Key? key}) : super(key: key);

  final List<ExperienceModel> experience = [
    ExperienceModel(
        companyName: "Google",
        position: "GG",
        year: "gg",
        currently: "GG",
        color: Colors.blue,
        details: "GG"),
    ExperienceModel(
        companyName: "Bizz",
        position: "GG",
        year: "gg",
        currently: "GG",
        color: Colors.yellow,
        details: "GG"),
    ExperienceModel(
        companyName: "Facebook",
        position: "GG",
        year: "gg",
        color: Colors.green,
        currently: "GG",
        details: "GG"),
    ExperienceModel(
        companyName: "Mozammel",
        position: "GG",
        year: "gg",
        currently: "GG",
        color: Colors.orange,
        details: "GG"),
    ExperienceModel(
        companyName: "Bizz",
        position: "GG",
        year: "gg",
        color: Colors.purple,
        currently: "GG",
        details: "GG"),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HoverBloc()
        ..add(
            DataLoadEvent(experienceData: ExperienceModel(), selectedIndex: 0)),
      child: Container(
        padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                      text: "02.",
                      style: const TextStyle(
                          color: neonColor, fontSize: 20, fontFamily: 'sfmono'),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Where I’ve Worked",
                          style: GoogleFonts.robotoSlab(
                              color: Colors.white,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
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
            BlocBuilder<HoverBloc, HoverState>(
              builder: (context, state) {
                if (state is DataLoadedState) {
                  return Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            ListView.builder(
                                itemCount: experience.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {
                                      BlocProvider.of<HoverBloc>(context).add(
                                          DataLoadEvent(
                                              experienceData: ExperienceModel(),
                                              selectedIndex: index));
                                    },
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.07,
                                      decoration: const BoxDecoration(
                                          color: Colors.blue),
                                      child: Text(
                                          "${experience[index].companyName}"),
                                    ),
                                  );
                                })
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Column(
                          children: [
                            BlocBuilder<HoverBloc, HoverState>(
                              builder: (context, state) {
                                if (state is DataLoadedState) {
                                  return Container(
                                    color:
                                        experience[state.selectedIndex].color!,
                                    height: MediaQuery.of(context).size.height *
                                        0.35,
                                    width:
                                        MediaQuery.of(context).size.width * 1,
                                    child: Column(
                                      children: [
                                        Text(experience[state.selectedIndex]
                                            .companyName!),
                                        Text(experience[state.selectedIndex]
                                            .position!),
                                      ],
                                    ),
                                  );
                                }
                                return Text("Data GG");
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
