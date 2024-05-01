import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/AllExpansesHeader.dart';
import 'package:responsive_dashboard/widgets/AllExpinsesItemListView.dart';
import 'package:responsive_dashboard/widgets/CoustomBasckGroundcontainer.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CoustomBasckGroundcontainer(
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
