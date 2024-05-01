import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/appStay.dart';
import 'package:responsive_dashboard/widgets/RangeMonthsOptions.dart';

class AllExpansesHeader extends StatelessWidget {
  const AllExpansesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        const RangeMonthsOptions(),
      ],
    );
  }
}
