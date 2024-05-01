import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/Genral/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/Drawer/DashboardDesktopLayoutViwe.dart';

class DashBoard_view extends StatelessWidget {
  const DashBoard_view({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) {
        return Container();
      },
      tabletLayout: (context) {
        return Container();
      },
      desktopLayout: (context) {
        return const DashboardDesktopLayoutView();
      },
    );
  }
}
