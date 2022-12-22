import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../blocs/hover/hover_bloc.dart';
import '../../config/constants/colors.dart';
import '../../config/constants/string_config.dart';
import '../../config/tecs.dart';

class AboutMeDesktop extends StatelessWidget {
  const AboutMeDesktop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HoverBloc, HoverState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
          child: Column(
            children: [
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                        text: "01.",
                        style: const TextStyle(
                            color: neonColor,
                            fontSize: 20,
                            fontFamily: 'sfmono'),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' About Me',
                            style: GoogleFonts.robotoSlab(
                                color: headerColor,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          )
                        ]),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    color: textLight,
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: 0.5,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "$aboutme",
                          style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                                fontSize: 17,
                                color: textLight,
                                letterSpacing: 1),
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Divider(color: bigText, thickness: 1),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Here is the few technology i know",
                          style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                                fontSize: 17,
                                color: bigText,
                                letterSpacing: .5),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: techLan
                              .map((e) => Techs(
                                    languageTech: e,
                                  ))
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      flex: 2,
                      child: InkWell(
                        onTap: () {},
                        onHover: (value) {
                          if (value) {
                            BlocProvider.of<HoverBloc>(context)
                                .add(ProfileImageEvent());
                          } else {
                            BlocProvider.of<HoverBloc>(context)
                                .add(HoverOutEvent());
                          }
                        },
                        child: Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width *
                                  (state is ProfileImageState
                                      ? state.height
                                      : 0.225),
                              height: MediaQuery.of(context).size.width *
                                  (state is ProfileImageState
                                      ? state.width
                                      : 0.225),
                              margin: const EdgeInsets.only(top: 10, left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5.0)),
                                  border:
                                      Border.all(color: neonColor, width: 1.5)),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.22,
                              height: MediaQuery.of(context).size.width * 0.22,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5.0)),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      colorFilter: ColorFilter.mode(
                                          const Color(0xff0a192e),
                                          state is ProfileImageState
                                              ? state.blendMode
                                              : BlendMode.colorDodge),
                                      image: const AssetImage(
                                          'assets/images/mine.jpg')),
                                  color: Colors.transparent),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        );
      },
    );
  }
}
