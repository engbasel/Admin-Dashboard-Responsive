import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:responsive_dashboard/modules/item_details_model.dart';
import 'package:responsive_dashboard/widgets/Income/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static var items = [
    ItemDetailsModel(
        color: const Color(0xFF208BC7), title: 'Design service', value: '%40'),
    ItemDetailsModel(
        color: const Color(0xFF4DB7F2), title: 'Design product', value: '%25'),
    ItemDetailsModel(
        color: const Color(0xFF064060), title: 'Product royalti', value: '%20'),
    ItemDetailsModel(
        color: const Color(0xFFE2DECD), title: 'Other', value: '%22'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) => ItemDetails(itemDetailsModel: e)).toList(),
    );
  }
}
