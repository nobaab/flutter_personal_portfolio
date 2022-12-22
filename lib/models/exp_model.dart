import 'dart:ui';

import 'package:flutter/material.dart';

class ExperienceModel {
  String? companyName;
  String? position;
  String? year;
  String? currently;
  String? details;
  Color? color;
  ExperienceModel(
      {this.companyName,
      this.position,
      this.year,
      this.currently,
      this.details,
      this.color});
}

final List<ExperienceModel> experience = [
  ExperienceModel(
      companyName: "Bizzntek Ltd",
      position: "Associate Software Engineer",
      year: "September 2022 - Present",
      currently: "GG",
      color: Colors.blue,
      details:
          "Write modern, performant, maintainable code for a diverse array of client and internal projects"),
  ExperienceModel(
      companyName: "Bizzntek Ltd",
      position: "Associate Software Engineer",
      year: "September 2022 - Present",
      currently: "GG",
      color: Colors.blue,
      details:
          "Write modern, performant, maintainable code for a diverse array of client and internal projects"),
];
