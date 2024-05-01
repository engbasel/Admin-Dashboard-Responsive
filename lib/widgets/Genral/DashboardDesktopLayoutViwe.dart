import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/Drawer/CoustomDrawer.dart';
import 'package:responsive_dashboard/widgets/Genral/QuickInvoiceAndAllExpenses.dart';
import 'package:responsive_dashboard/widgets/Income/income_section.dart';
import 'package:responsive_dashboard/widgets/Transaction%20History/my_cards_and_transction_history_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(top: 1),
                          child: QuickInvoiceAndAllExpensesSection(),
                        )),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(height: 100),
                          MyCardsAndTransctionHistorySection(),
                          SizedBox(
                            height: 24,
                          ),
                          Expanded(child: IncomeSection()),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
//     );
//   }
// }



