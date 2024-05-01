import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {
  CustomBackgroundContainer({
    super.key,
    required this.child,
    this.padding,
  });
  Widget child;
  double? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: child,
    );
  }
}
