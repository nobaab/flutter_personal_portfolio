import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../blocs/hover/hover_bloc.dart';
import '../../config/constants/colors.dart';

class WorkDesktop extends StatelessWidget {
  const WorkDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HoverBloc, HoverState>(
      builder: (context, state) {
        return Padding(
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
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
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
                                              BlocProvider.of<HoverBloc>(context).add(WorkImageEvent(selectedIndex: index));
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
                                                    fit: BoxFit.cover,
                                                    colorFilter: ColorFilter.mode(
                                                        const Color(0xFF1d4652),
                                                        state is WorkImageState
                                                            ? (state.selectedIndex == index
                                                                ? BlendMode.colorDodge
                                                                : BlendMode.lighten)
                                                            : BlendMode.lighten),
                                                    image: const AssetImage('assets/images/work.png')),
                                                color: Colors.transparent),
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
                                                "Personal Portfolio",
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
                                                  "A minimal, dark blue theme for VS Code, Sublime Text, Atom, iTerm, and more. Available on Visual Studio Marketplace, Package Control, Atom Package Manager, and npm",
                                                  style: GoogleFonts.robotoSlab(
                                                      color: headerColor, letterSpacing: 1, fontSize: 15),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2.h,
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Text("Flutter",
                                                    style: GoogleFonts.robotoSlab(
                                                        color: headerColor, letterSpacing: 1, fontSize: 12)),
                                                SizedBox(
                                                  width: 1.w,
                                                ),
                                                Text("Dart",
                                                    style: GoogleFonts.robotoSlab(
                                                        color: headerColor, letterSpacing: 1, fontSize: 12)),
                                                SizedBox(
                                                  width: 1.w,
                                                ),
                                                Text("Bloc",
                                                    style: GoogleFonts.robotoSlab(
                                                        color: headerColor, letterSpacing: 1, fontSize: 12)),
                                              ],
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
                                            BlocProvider.of<HoverBloc>(context).add(WorkImageEvent(selectedIndex: index));
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
                                                    fit: BoxFit.cover,
                                                    colorFilter: ColorFilter.mode(
                                                        const Color(0xFF1d4652),
                                                        state is WorkImageState
                                                            ? (state.selectedIndex == index
                                                                ? BlendMode.colorDodge
                                                                : BlendMode.lighten)
                                                            : BlendMode.lighten),
                                                    image: const AssetImage('assets/images/work.png')),
                                                color: Colors.transparent),
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
                                                "Personal Portfolio",
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
                                                      .add(WorkImageEvent(selectedIndex: index));
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
                                                  "A minimal, dark blue theme for VS Code, Sublime Text, Atom, iTerm, and more. Available on Visual Studio Marketplace, Package Control, Atom Package Manager, and npm",
                                                  style: GoogleFonts.robotoSlab(
                                                      color: headerColor, letterSpacing: 1, fontSize: 15),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2.h,
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Text("Flutter",
                                                    style: GoogleFonts.robotoSlab(
                                                        color: headerColor, letterSpacing: 1, fontSize: 12)),
                                                SizedBox(
                                                  width: 1.w,
                                                ),
                                                Text("Dart",
                                                    style: GoogleFonts.robotoSlab(
                                                        color: headerColor, letterSpacing: 1, fontSize: 12)),
                                                SizedBox(
                                                  width: 1.w,
                                                ),
                                                Text("Bloc",
                                                    style: GoogleFonts.robotoSlab(
                                                        color: headerColor, letterSpacing: 1, fontSize: 12)),
                                              ],
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
                  }),
              SizedBox(
                height: 2.h,
              ),
            ],
          ),
        );
      },
    );
  }
}
