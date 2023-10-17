import 'package:flutter/material.dart';
import 'package:personal_portfolio/responsive/responsive.dart';

import 'contract_mobile.dart';
import 'contract_web.dart';

class Contract extends StatelessWidget {
  const Contract({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobileView: ContractMobile(),
      desktopView: ContractWeb(),
      tabletView: ContractWeb(),
    );
  }
}
