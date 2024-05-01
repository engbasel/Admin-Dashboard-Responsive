import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/MyCustomScrollBehavior.dart';
import 'package:responsive_dashboard/viwes/dashboard_viwe.dart';

void main(List<String> args) {
  runApp(const responsive_dashboard());
}

class responsive_dashboard extends StatelessWidget {
  const responsive_dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      home: const DashBoradView(),
      routes: const {},
    );
  }
}
