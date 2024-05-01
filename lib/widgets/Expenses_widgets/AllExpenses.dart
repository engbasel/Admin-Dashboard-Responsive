import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/Expenses_widgets/AllExpansesHeader.dart';
import 'package:responsive_dashboard/widgets/Expenses_widgets/AllExpinsesItemListView.dart';
import 'package:responsive_dashboard/widgets/Genral/CoustomBasckGroundcontainer.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: const Column(
        children: [
          AllExpansesHeader(),
          SizedBox(height: 16),
          AllExpinsesListVeiw(),
        ],
      ),
    );
  }
}
