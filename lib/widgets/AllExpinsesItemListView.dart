import 'package:flutter/material.dart';
import 'package:responsive_dashboard/modules/AllExpinsesItemModel.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/AllExpinsesItem.dart';

class AllExpinsesListVeiw extends StatefulWidget {
  const AllExpinsesListVeiw({super.key});

  @override
  State<AllExpinsesListVeiw> createState() => _AllExpinsesListVeiwState();
}

class _AllExpinsesListVeiwState extends State<AllExpinsesListVeiw> {
  final items = [
    AllExpinsesItemModel(
      image: Assets.imagesBalance,
      title: 'Title',
      date: 'data',
      price: 'price',
    ),
    AllExpinsesItemModel(
      image: Assets.imagesBalance,
      title: 'Title',
      date: 'data',
      price: 'price',
    ),
    AllExpinsesItemModel(
      image: Assets.imagesBalance,
      title: 'Title',
      date: 'data',
      price: 'price',
    ),
  ];
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                  // updateIndex(index);
                  print(index);
                },
                child: AllExpensessItem(
                  isSelected: selectedIndex == index,
                  itemModel: item,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                // updateIndex(index);
                setState(() {
                  selectedIndex = index;
                });
                print(index);
              },
              child: AllExpensessItem(
                isSelected: selectedIndex == index,
                itemModel: item,
              ),
            ),
          );
        }
      }).toList(),
    );
  }
}
