import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/Genral/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/Genral/DashboardDesktopLayoutViwe.dart';

class DashBoard_view extends StatelessWidget {
  const DashBoard_view({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) {
        return Container(
          child: const Center(
            child: Text('mobileLayout'),
          ),
        );
      },
      tabletLayout: (context) {
        return Container(
          child: const Center(
            child: Text('tabletLayout'),
          ),
        );
      },
      desktopLayout: (context) {
        return const DashboardDesktopLayoutView();
      },
    );
  }
}
