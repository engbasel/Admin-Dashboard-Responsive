// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/modules/UserInfoModel.dart';

import 'package:responsive_dashboard/utils/appStay.dart';

class UserInfoListTile extends StatelessWidget {
  // String title, subtitle, image;

  UserInfoModel userInfoModel;

  UserInfoListTile({super.key, required this.userInfoModel});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xfffafafa),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.image),
          title: Text(
            userInfoModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            userInfoModel.subtitle,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
