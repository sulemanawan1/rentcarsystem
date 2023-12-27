import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:rentcarsystem/Routes/set_routes.dart';
import 'package:rentcarsystem/Screens/Insurance%20Company%20Policy/Insurance_company_policy.dart';
import 'package:rentcarsystem/Widgets/My%20TextFormFields/my_textformfields.dart';
import 'package:rentcarsystem/main.dart';

class ClaimPage2 extends StatefulWidget {
  const ClaimPage2({super.key});

  @override
  State<ClaimPage2> createState() => _ClaimPage2State();
}

class _ClaimPage2State extends State<ClaimPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Icon(Icons.arrow_back_ios))),
      body: Padding(
        padding: const EdgeInsets.only(left: 23, right: 23),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              14.ph,
              const Heading(
                title: 'Tell us more about your incident',
              ),
              14.ph,
              const SubHeading(
                title: 'Driver CPR',
              ),
              5.ph,
              const MyTextFormField(
                hintText: '',
              ),
              14.ph,
              const SubHeading(
                title: 'Owner CPR',
              ),
              5.ph,
              const MyTextFormField(
                hintText: '',
              ),
              14.ph,
              const SubHeading(
                title: 'Insurance Company',
              ),
              5.ph,
              const MyTextFormField(
                hintText: '',
              ),
              14.ph,
              const SubHeading(
                title: 'Phone Number',
              ),
              5.ph,
              const MyTextFormField(
                hintText: '',
                textInputType: TextInputType.number,
              ),
              14.ph,
              const SubHeading(
                title: 'Email',
              ),
              5.ph,
              const MyTextFormField(
                suffixIcon: Icon(Icons.email_outlined),
                hintText: '',
                textInputType: TextInputType.number,
              ),
              40.ph,
              MyButton(
                name: 'Continue',
                onTap: () {
                  Get.toNamed(claimPage3);
                },
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
