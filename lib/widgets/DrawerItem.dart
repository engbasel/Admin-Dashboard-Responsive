import 'package:flutter/material.dart';
import 'package:responsive_dashboard/modules/drawerItemModel.dart';
import 'package:responsive_dashboard/widgets/Active_NotActive_items.dart';

class Drawer_Item extends StatelessWidget {
  Drawer_Item(
      {super.key, required this.Drawer_Item_Model, required this.IsActive});
  DrawerItemModel Drawer_Item_Model;
  bool IsActive;

  @override
  Widget build(BuildContext context) {
    return IsActive
        ? ActiveDrawerItem(Drawer_Item_Model: Drawer_Item_Model)
        : NotActiveDrawerItem(Drawer_Item_Model: Drawer_Item_Model);
  }
}
