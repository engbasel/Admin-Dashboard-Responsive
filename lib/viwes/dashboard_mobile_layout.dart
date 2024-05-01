import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/Genral/QuickInvoiceAndAllExpenses.dart';
import 'package:responsive_dashboard/widgets/Income/income_section.dart';
import 'package:responsive_dashboard/widgets/Transaction%20History/my_cards_and_transction_history_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          QuickInvoiceAndAllExpensesSection(),
          SizedBox(
            height: 24,
          ),
          MyCardsAndTransctionHistorySection(),
          SizedBox(
            height: 24,
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}
