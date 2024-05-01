import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/Card/my_cards_section.dart';
import 'package:responsive_dashboard/widgets/Genral/CoustomBasckGroundcontainer.dart';
// import 'package:responsive_dashboard/widgets/Income/income_section.dart';
import 'package:responsive_dashboard/widgets/Transaction%20History/TransactionHistory.dart';

class MyCardsAndTransctionHistorySection extends StatelessWidget {
  const MyCardsAndTransctionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
        child: const SingleChildScrollView(
      child: Column(
        children: [
          MyCardsSection(),
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          TrasnctionHistory(),
          // Divider(
          //   height: 40,
          //   color: Color(0xffF1F1F1),
          // ),
          // IncomeSection(),
        ],
      ),
    ));
  }
}
