// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/modules/UserInfoModel.dart';
import 'package:responsive_dashboard/modules/drawerItemModel.dart';
import 'package:responsive_dashboard/widgets/Genral/userinfolisttitle.dart';
import 'package:responsive_dashboard/widgets/Expenses_widgets/Active_NotActive_items.dart';
import 'package:responsive_dashboard/widgets/Drawer/DrawerItemsListViwe.dart';
import '../../utils/app_images.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                subtitle: 'Lekan Okeowo',
                title: 'demo@gmail.com',
                image: Assets.imagesAvatar3,
              ),
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
