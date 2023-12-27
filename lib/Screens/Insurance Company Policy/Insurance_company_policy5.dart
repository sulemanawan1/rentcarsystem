import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentcarsystem/Routes/set_routes.dart';
import 'package:rentcarsystem/Screens/Insurance%20Company%20Policy/Insurance_company_policy.dart';
import 'package:rentcarsystem/Widgets/My%20TextFormFields/my_textformfields.dart';
import 'package:rentcarsystem/main.dart';

class InsuranceCompanyPolicy5 extends StatefulWidget {
  const InsuranceCompanyPolicy5({super.key});

  @override
  State<InsuranceCompanyPolicy5> createState() =>
      _InsuranceCompanyPolicy5State();
}

class _InsuranceCompanyPolicy5State extends State<InsuranceCompanyPolicy5> {
  final motorController = TextEditingController();
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
        padding: const EdgeInsets.only(left: 23),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Heading(title: 'Your Premium'),
          const SubHeading(
            title: 'Motor',
          ),
          10.ph,
          MyTextFormField(
            hintText: 'Motor',
            controller: motorController,
          ),
          20.ph,
          CustomText(
            title: "Sum Insured",
            text: "BD 1.00",
          ),
          20.ph,
          CustomText(
            title: "Premium",
            text: "BD 200.00",
          ),
          20.ph,
          CustomText(
            title: "VAT(10%)",
            text: "BD 20.00",
          ),
          40.ph,
          Container(
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Premium',
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'BD 220.00',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
          Spacer(
            flex: 5,
          ),
          MyButton(
            name: "Proceed to Pay",
            onTap: () {
              Get.toNamed(claimPage);
            },
          ),
          Spacer(
            flex: 1,
          ),
        ]),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String? title;
  final String? text;
  const CustomText({super.key, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            text!,
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
