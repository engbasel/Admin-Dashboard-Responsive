import 'package:flutter/material.dart';
import 'package:responsive_dashboard/modules/UserInfoModel.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/viwes/widgets/userinfolisttitle.dart';

class LatestTransactionListView extends StatelessWidget {
  LatestTransactionListView({super.key});
  List items = [
    UserInfoModel(
      subtitle: 'Madrani Andi',
      title: 'Madraniadi20@gmail',
      image: Assets.imagesAvatar1,
    ),
    UserInfoModel(
      subtitle: 'Madrani Andi',
      title: 'Madraniadi20@gmail',
      image: Assets.imagesAvatar2,
    ),
    UserInfoModel(
      subtitle: 'Madrani Andi',
      title: 'Madraniadi20@gmail',
      image: Assets.imagesAvatar3,
    ),
    UserInfoModel(
      subtitle: 'Madrani Andi',
      title: 'Madraniadi20@gmail',
      image: Assets.imagesAvatar3,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) =>
                IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
            .toList(),
      ),
    );
  }
}
// ListView.builder(
//   itemBuilder: (context, index) {
//     return IntrinsicWidth(
//       child: UserInfoListTile(
//         userInfoModel: items[index],
//       ),
//     );
//   },
//   scrollDirection: Axis.horizontal,
//   itemCount: items.length,
// ),
