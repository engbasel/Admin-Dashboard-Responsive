// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:responsive_dashboard/modules/AllExpinsesItemModel.dart';
import 'package:responsive_dashboard/widgets/Expenses_widgets/active_and_notActiveAllExpinsesIitem.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem({
    super.key,
    required this.isSelected,
    required this.itemModel,
  });
  final AllExpinsesItemModel itemModel;
  final isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensessItem(itemModel: itemModel)
        : InActiveAllExpensessItem(itemModel: itemModel);
  }
}
