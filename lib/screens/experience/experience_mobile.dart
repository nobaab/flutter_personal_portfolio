import 'package:flutter/material.dart';

class ExperienceMobile extends StatefulWidget {
  const ExperienceMobile({Key? key}) : super(key: key);

  @override
  State<ExperienceMobile> createState() => _ExperienceMobileState();
}

class _ExperienceMobileState extends State<ExperienceMobile> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Mobile Version Coming Soon!",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
