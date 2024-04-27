import 'package:flutter/material.dart';
import 'package:responsive_dashboard/viwes/dashboard_viwe.dart';

void main(List<String> args) {
  runApp(const responsive_dashboard());
}

class responsive_dashboard extends StatelessWidget {
  const responsive_dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DashBoard_view(),
      routes: {},
    );
  }
}
