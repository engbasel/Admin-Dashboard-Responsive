// import 'package:flutter/material.dart';
// import 'package:responsive_dashboard/widgets/Genral/adaptive_layout_widget.dart';
// import 'package:responsive_dashboard/widgets/Genral/DashboardDesktopLayoutViwe.dart';

// class DashBoard_view extends StatelessWidget {
//   const DashBoard_view({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return AdaptiveLayout(
//       mobileLayout: (context) {
//         return Container(
//           child: const Center(
//             child: Text('mobileLayout'),
//           ),
//         );
//       },
//       tabletLayout: (context) {
//         return Container(
//           child: const Center(
//             child: Text('tabletLayout'),
//           ),
//         );
//       },
//       desktopLayout: (context) {
//         return const DashboardDesktopLayoutView();
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';

import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/Drawer/CoustomDrawer.dart';
import 'package:responsive_dashboard/widgets/Genral/DashboardDesktopLayoutViwe.dart';
import 'package:responsive_dashboard/widgets/Genral/adaptive_layout_widget.dart';

class DashBoradView extends StatefulWidget {
  const DashBoradView({super.key});

  @override
  State<DashBoradView> createState() => _DashBoradViewState();
}

class _DashBoradViewState extends State<DashBoradView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFFFAFAFA),
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      body: AdaptiveLayout(
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
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
