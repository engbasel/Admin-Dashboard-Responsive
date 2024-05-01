import 'package:flutter/material.dart';
import 'package:responsive_dashboard/modules/drawerItemModel.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/Drawer/DrawerItem.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int ActiveIndex = 0;
  static List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    DrawerItemModel(title: 'My Transaction', image: Assets.imagesMyTransctions),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWalletAccount),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesMyInvestments),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      // shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (ActiveIndex != index) {
              setState(() {
                ActiveIndex = index;
                print(ActiveIndex);
              });
            }
          },
          child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Drawer_Item(
                  Drawer_Item_Model: items[index],
                  IsActive: ActiveIndex == index)),
        );
      },
    );
  }
}
