import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/Genral/CoustomBasckGroundcontainer.dart';
import 'package:responsive_dashboard/widgets/Quickinvoice/QuickInvoiceHeader.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CoustomBasckGroundcontainer(
        child: const Column(
      children: [
        QuickInvoiceHeader(),
      ],
    ));
  }
}
