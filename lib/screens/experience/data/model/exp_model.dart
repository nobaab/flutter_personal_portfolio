// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ExperienceModel {
  String? companyName;
  String? position;
  String? year;
  String? currently;
  String? detailsOne;
  String? detailsTwo;
  String? detailsThree;
  Color? color;
  IconData icon;
  ExperienceModel({
    this.companyName,
    this.position,
    this.year,
    this.currently,
    this.detailsOne = "",
    this.detailsTwo = "",
    this.detailsThree = "",
    this.color,
    this.icon = Icons.arrow_right,
  });
}

final List<ExperienceModel> experience = [
  ExperienceModel(
      companyName: "B-Block",
      position: "Software Engineer",
      year: "February 2023 - Present",
      currently: "GG",
      color: Colors.blue,
      detailsOne: "Learned new flutter techniques",
      detailsTwo: "Developed InHouse Applications"),
  ExperienceModel(
      companyName: "Bizzntek Ltd",
      position: "Associate Software Engineer",
      year: "September 2022 - May 2023",
      currently: "GG",
      color: Colors.blue,
      detailsOne: "Learned Flutter Bloc",
      detailsTwo: "Worked on a Property Management Application",
      detailsThree: "Learned techniques to write clean code"),
];
