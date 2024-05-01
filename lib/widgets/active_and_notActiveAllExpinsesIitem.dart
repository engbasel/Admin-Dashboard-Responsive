import 'package:flutter/material.dart';
import 'package:responsive_dashboard/modules/AllExpinsesItemModel.dart';
import 'package:responsive_dashboard/utils/appStay.dart';
import 'package:responsive_dashboard/widgets/AllExpensesItemHeader.dart';

class InactiveAllExpinsesItem extends StatelessWidget {
  const InactiveAllExpinsesItem({
    super.key,
    required this.ItemModelExpenses,
  });

  final AllExpinsesItemModel ItemModelExpenses;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff4eb7f2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: ItemModelExpenses.image,
          ),
          const SizedBox(height: 30),
          Text(
            ItemModelExpenses.title,
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(height: 8),
          Text(
            ItemModelExpenses.date,
            style: AppStyles.styleRegular14(context),
          ),
          const SizedBox(height: 16),
          Text(
            ItemModelExpenses.price,
            style: AppStyles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}

class activeAllExpinsesItem extends StatelessWidget {
  const activeAllExpinsesItem({
    super.key,
    required this.ItemModelExpenses,
  });

  final AllExpinsesItemModel ItemModelExpenses;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(199, 248, 102, 5),
            borderRadius: BorderRadius.circular(9)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(
              backGroundColor: Colors.white.withOpacity(0.100000149011612),
              imageColor: Colors.white,
              image: ItemModelExpenses.image,
            ),
            const SizedBox(height: 30),
            Text(
              ItemModelExpenses.title,
              style: AppStyles.styleMedium16(context).copyWith(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              ItemModelExpenses.date,
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: const Color(0xFFFAFAFA)),
            ),
            const SizedBox(height: 16),
            Text(
              ItemModelExpenses.price,
              style: AppStyles.styleSemiBold24(context).copyWith(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
