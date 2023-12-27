import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:rentcarsystem/Routes/set_routes.dart';
import 'package:rentcarsystem/Screens/Insurance%20Company%20Policy/Insurance_company_policy.dart';
import 'package:rentcarsystem/Widgets/My%20TextFormFields/my_textformfields.dart';
import 'package:rentcarsystem/main.dart';

class InsuranceCompanyPolicy4 extends StatefulWidget {
  const InsuranceCompanyPolicy4({super.key});

  @override
  State<InsuranceCompanyPolicy4> createState() =>
      _InsuranceCompanyPolicy4State();
}

class _InsuranceCompanyPolicy4State extends State<InsuranceCompanyPolicy4> {
  final List<String> bankItems = [
    "Bank1",
    "Bank2",
  ];

  String bank = "Bank1";

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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Spacer(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Heading(title: 'What’s your Bank/Lender name?'),
                    20.ph,
                    Container(
                      width: double.infinity,
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: bank,
                        items: bankItems.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          // Handle dropdown item selection if needed
                          bank = newValue!;
                          setState(() {});
                        },
                      ),
                    ),
                    20.ph,
                    MyButton(
                      name: 'Continue',
                      onTap: () {
                        Get.toNamed(insuranceCompanyPolicy5);
                      },
                    ),
                  ]),
            ),
          )
        ]),
      ),
    );
    ;
  }
}
