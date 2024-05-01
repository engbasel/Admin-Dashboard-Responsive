// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/modules/drawerItemModel.dart';
import 'package:responsive_dashboard/viwes/widgets/userinfolisttitle.dart';
import 'package:responsive_dashboard/widgets/Expenses_widgets/Active_NotActive_items.dart';
import 'package:responsive_dashboard/widgets/Drawer/DrawerItemsListViwe.dart';
import '../../utils/app_images.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              image: Assets.imagesAvatar3,
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 8)),
          const DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(child: SizedBox()),
                NotActiveDrawerItem(
                  Drawer_Item_Model: DrawerItemModel(
                    title: 'Setting system',
                    image: Assets.imagesSettings,
                  ),
                ),
                NotActiveDrawerItem(
                  Drawer_Item_Model: DrawerItemModel(
                    title: 'Logout account',
                    image: Assets.imagesLogout,
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          )
        ],
      ),
    );
  }
}
