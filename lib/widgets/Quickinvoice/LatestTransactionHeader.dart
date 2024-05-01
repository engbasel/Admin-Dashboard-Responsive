import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/appStay.dart';
import 'package:responsive_dashboard/widgets/Quickinvoice/LatestTransactionListViwe.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
          // textAlign: TextAlign.start,
        ),
        const SizedBox(
          height: 16,
        ),
        LatestTransactionListView(),
      ],
    );
  }
}
