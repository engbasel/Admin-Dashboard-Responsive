import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/modules/drawerItemModel.dart';
import 'package:responsive_dashboard/utils/appStay.dart';

class NotActiveDrawerItem extends StatelessWidget {
  const NotActiveDrawerItem({
    super.key,
    required this.Drawer_Item_Model,
  });

  final DrawerItemModel Drawer_Item_Model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(Drawer_Item_Model.image),
      title: Text(
        Drawer_Item_Model.title,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.Drawer_Item_Model,
  });

  final DrawerItemModel Drawer_Item_Model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(Drawer_Item_Model.image),
      title: Text(
        Drawer_Item_Model.title,
        style: AppStyles.styleBold16(context),
      ),
      trailing: Container(
        width: 10,
        decoration: const BoxDecoration(
          color: Color(0xFF4EB7F2),
        ),
      ),
    );
  }
}
