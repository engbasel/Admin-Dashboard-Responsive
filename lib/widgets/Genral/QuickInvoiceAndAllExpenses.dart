import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/Expenses_widgets/AllExpenses.dart';
import 'package:responsive_dashboard/widgets/Quickinvoice/QuickInvoice.dart';

class QuickInvoiceAndAllExpensesSection extends StatelessWidget {
  const QuickInvoiceAndAllExpensesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpenses(),
          SizedBox(height: 24),
          QuickInvoice(),
        ],
      ),
    );
  }
}
