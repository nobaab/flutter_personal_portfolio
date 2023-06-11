import 'package:flutter/material.dart';

class WorkMobile extends StatefulWidget {
  const WorkMobile({Key? key}) : super(key: key);

  @override
  State<WorkMobile> createState() => _WorkMobileState();
}

class _WorkMobileState extends State<WorkMobile> {
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
