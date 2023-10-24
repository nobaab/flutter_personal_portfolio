import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../blocs/hover/hover_bloc.dart';
import '../../config/constants/colors.dart';
import '../../config/constants/string_config.dart';
import '../../config/tecs.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HoverBloc, HoverState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
          child: Column(
            children: [
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                        text: "01.",
                        style: const TextStyle(color: neonColor, fontSize: 20, fontFamily: 'sfmono'),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' About Me',
                            style: GoogleFonts.robotoSlab(
                                color: Colors.white, letterSpacing: 1, fontWeight: FontWeight.bold, fontSize: 25),
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
                            textStyle: const TextStyle(fontSize: 15, color: textLight, letterSpacing: 1),
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
                            textStyle: const TextStyle(fontSize: 15, color: bigText, letterSpacing: .5),
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
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  if (value) {
                    BlocProvider.of<HoverBloc>(context).add(ProfileImageEvent());
                  } else {
                    BlocProvider.of<HoverBloc>(context).add(HoverOutEvent());
                  }
                },
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.width * 0.5,
                      margin: const EdgeInsets.only(top: 10, left: 10),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                          border: Border.all(color: neonColor, width: 1.5)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.width * 0.5,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(Color(0xff0a192e), BlendMode.colorDodge),
                              image: AssetImage('assets/images/mine.jpg')),
                          color: Colors.transparent),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
