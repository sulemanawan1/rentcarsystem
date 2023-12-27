import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentcarsystem/Routes/routes_management.dart';
import 'package:rentcarsystem/Routes/set_routes.dart';
import 'package:rentcarsystem/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(primaryColor: primaryColor),
      debugShowCheckedModeBanner: false,
      initialRoute: insuranceCompanyPolicy,
      getPages: RouteManagement.getPages(),
    );
    ;
  }
}

extension MySizedBox on num {
  SizedBox get ph => SizedBox(height: toDouble());
  SizedBox get pw => SizedBox(width: toDouble());
}
