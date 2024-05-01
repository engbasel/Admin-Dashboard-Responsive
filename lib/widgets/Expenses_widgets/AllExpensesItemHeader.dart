import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  AllExpensesItemHeader({
    super.key,
    required this.image,
    this.imageColor,
    this.backGroundColor,
  });
  String image;
  Color? backGroundColor, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(7),
          decoration: ShapeDecoration(
            color: backGroundColor ?? Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
            ),
          ),
          child: Center(
              child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                imageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
          )),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Transform.rotate(
            angle: -1.57 * 2,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color:
                  imageColor == null ? const Color(0xFF064061) : Colors.white,
              // Icon
            ),
          ),
        )
      ],
    );
  }
}
