// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:responsive_dashboard/widgets/Genral/CoustomBasckGroundcontainer.dart';
// import 'package:responsive_dashboard/widgets/Income/income_chart.dart';
// import 'package:responsive_dashboard/widgets/Income/income_details.dart';
// import 'package:responsive_dashboard/widgets/Income/income_section_header.dart';

// class IncomeSection extends StatelessWidget {
//   const IncomeSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CustomBackgroundContainer(
//       child: Column(
//         children: [
//           const IncomeSectionHeader(),
//           Container(
//             child: const Row(
//               children: [
//                 Expanded(child: IncomeChart()),
//                 Expanded(child: IncomeDetails()),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/Genral/CoustomBasckGroundcontainer.dart';
import 'package:responsive_dashboard/widgets/Income/income_section_body.dart';
import 'package:responsive_dashboard/widgets/Income/income_section_header.dart';
// import 'package:responsive_dash_board/utils/app_styles.dart';
// import 'package:responsive_dash_board/widgets/custom_background_container.dart';
// import 'package:responsive_dash_board/widgets/income_chart.dart';
// import 'package:responsive_dash_board/widgets/income_details.dart';
// import 'package:responsive_dash_board/widgets/income_section_body.dart';
// import 'package:responsive_dash_board/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
        child: const Column(
      children: [IncomeSectionHeader(), IncomSectionBody()],
    ));
  }
}
