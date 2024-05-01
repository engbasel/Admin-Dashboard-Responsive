import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/Genral/CoustomBasckGroundcontainer.dart';
import 'package:responsive_dashboard/widgets/Quickinvoice/LatestTransactionHeader.dart';
import 'package:responsive_dashboard/widgets/Quickinvoice/QuickInvoiceHeader.dart';
import 'package:responsive_dashboard/widgets/Quickinvoice/quick_invoice_form.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(height: 48),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
