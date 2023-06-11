// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class WorkResponseModel {
  AssetImage? image;
  String? projectName;
  String? projectDescription;
  String? githubSource;
  bool? featured;
  List<TechInfoModel>? techInfo;
  WorkResponseModel({
    this.image,
    this.projectName,
    this.projectDescription,
    this.githubSource,
    this.featured,
    required this.techInfo,
  });
}

class TechInfoModel {
  String? techName;
  TechInfoModel({
    this.techName,
  });
}

final List<WorkResponseModel> works = [
  WorkResponseModel(
    featured: true,
    image: const AssetImage("assets/images/portfolio.png"),
    projectName: "Personal Portfolio",
    projectDescription: "A personal portfolio website built with Flutter web",
    githubSource: "",
    techInfo: [
      TechInfoModel(techName: "Flutter Web"),
      TechInfoModel(techName: "Flutter Bloc"),
    ],
  ),
  WorkResponseModel(
    featured: true,
    image: const AssetImage("assets/images/bexca.png"),
    projectName: "Bexca",
    projectDescription: "It’s an official application of the Barishal Ex-Cadets' Association.",
    githubSource: "",
    techInfo: [
      TechInfoModel(techName: "Flutter"),
      TechInfoModel(techName: "Flutter Bloc"),
      TechInfoModel(techName: "Hive"),
    ],
  ),
  WorkResponseModel(
    featured: false,
    image: const AssetImage("assets/images/work.png"),
    projectName: "I-Donate",
    projectDescription:
        "A donation application based on Flutter and Firebase. It's basically an application in which a user can register through email and phone numbers also after that they can post their needs.",
    githubSource: "",
    techInfo: [
      TechInfoModel(techName: "Flutter"),
      TechInfoModel(techName: "Firebase"),
    ],
  )
];
