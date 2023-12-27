import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentcarsystem/Routes/set_routes.dart';
import 'package:rentcarsystem/Screens/Insurance%20Company%20Policy/Insurance_company_policy.dart';
import 'package:rentcarsystem/main.dart';

class ClaimPage extends StatefulWidget {
  const ClaimPage({super.key});

  @override
  State<ClaimPage> createState() => _ClaimPageState();
}

class _ClaimPageState extends State<ClaimPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Icon(Icons.arrow_back_ios))),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(left: 23),
          child: Image.asset('assets/logo.png'),
        ),
        20.ph,
        Padding(
          padding: const EdgeInsets.only(left: 23),
          child: Heading(title: 'Claim'),
        ),
        20.ph,
        Padding(
          padding: const EdgeInsets.only(left: 23),
          child: SubHeading(title: 'You have been in an accident?'),
        ),
        Center(child: Image.asset('assets/claimpage_vector.png')),
        30.ph,
        Center(
          child: Text(
            """Do not worry, we are here to help you.\n Filing a claim has never been easier\n with only few steps we will be able to\n serve you immediately""",
            style: GoogleFonts.poppins(
                color: Color(0xFF3E3E3E),
                fontSize: 14,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
        ),
        50.ph,
        Padding(
          padding: const EdgeInsets.only(left: 23),
          child: MyButton(
            name: 'Start Now',
            onTap: () {
              Get.toNamed(claimPage2);
            },
          ),
        )
      ]),
    );
  }
}
