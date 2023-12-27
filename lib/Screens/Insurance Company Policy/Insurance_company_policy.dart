import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentcarsystem/Routes/set_routes.dart';
import 'package:rentcarsystem/Widgets/My%20TextFormFields/my_textformfields.dart';
import 'package:rentcarsystem/colors.dart';
import 'package:rentcarsystem/main.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InsuranceCompanyPolicy extends StatefulWidget {
  const InsuranceCompanyPolicy({super.key});

  @override
  State<InsuranceCompanyPolicy> createState() => _InsuranceCompanyPolicyState();
}

class _InsuranceCompanyPolicyState extends State<InsuranceCompanyPolicy> {
  final List<String> replacementCarsList = ['8 Days - Small Car'];
  final List<String> geogharapicExtenionsItems = ["KSA", "GCC", ""];
  bool isWindSheildChecked = false;
  bool isReplacementCarChecked = false;
  bool isVipChecked = false;
  bool isdepreciationOnPartChecked = false;
  bool isRsmdChecked = false;
  bool geogharapicExtenionsChecked = false;

  String? windSieldVal;
  String? replacementCarVal;
  String? vipVal;
  String? depVal;
  String? rsmdVal;
  String? geogharapicExtenionsVal = "";

  final TextEditingController motorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const Icon(Icons.arrow_back_ios)),
      body: Padding(
        padding: const EdgeInsets.only(left: 23, right: 23),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              14.ph,
              Heading(
                title: 'Your Premium',
              ),
              14.ph,
              SubHeading(
                title: 'Motor',
              ),
              5.ph,
              MyTextFormField(
                hintText: 'Motor',
                controller: motorController,
              ),
              33.ph,
              Text(
                'Select your benefits',
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  height: 0.17,
                ),
              ),
              20.ph,
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: primaryColor)),
                child: Column(
                  children: [
                    14.ph,
                    GestureDetector(
                      onTap: () {
                        isReplacementCarChecked = !isReplacementCarChecked;

                        if (isReplacementCarChecked) {
                          replacementCarVal = "replacementcar";
                        } else {
                          replacementCarVal = "";
                        }

                        print(replacementCarVal);
                        print(isReplacementCarChecked);
                        setState(() {});
                      },
                      child: Row(children: [
                        23.pw,
                        SvgPicture.asset(isReplacementCarChecked
                            ? 'assets/check.svg'
                            : 'assets/uncheck.svg'),
                        30.pw,
                        Text(
                          'Replacement Car',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                    ),
                    7.ph,
                    isReplacementCarChecked
                        ? DropdownButton<String>(
                            value: replacementCarsList.first,
                            items: replacementCarsList.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              // Handle dropdown item selection if needed
                            },
                          )
                        : SizedBox()
                  ],
                ),
              ),
              14.ph,
              GestureDetector(
                onTap: () {
                  isWindSheildChecked = !isWindSheildChecked;

                  if (isWindSheildChecked) {
                    windSieldVal = "windshield";
                  } else {
                    windSieldVal = "";
                  }

                  print(windSieldVal);
                  print(isWindSheildChecked);
                  setState(() {});
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: primaryColor)),
                  child: Row(children: [
                    23.pw,
                    SvgPicture.asset(isWindSheildChecked
                        ? 'assets/check.svg'
                        : 'assets/uncheck.svg'),
                    30.pw,
                    Text(
                      'Windshield',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
                ),
              ),
              20.ph,
              GestureDetector(
                onTap: () {
                  isVipChecked = !isVipChecked;

                  if (isVipChecked) {
                    vipVal = "vip";
                  } else {
                    vipVal = "";
                  }

                  print(vipVal);
                  print(isVipChecked);
                  setState(() {});
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: primaryColor)),
                  child: Row(children: [
                    23.pw,
                    SvgPicture.asset(isVipChecked
                        ? 'assets/check.svg'
                        : 'assets/uncheck.svg'),
                    30.pw,
                    Text(
                      'Vip',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
                ),
              ),
              20.ph,
              GestureDetector(
                onTap: () {
                  isdepreciationOnPartChecked = !isdepreciationOnPartChecked;

                  if (isdepreciationOnPartChecked) {
                    depVal = "depreciationonparts";
                  } else {
                    depVal = "";
                  }

                  print(depVal);
                  print(isdepreciationOnPartChecked);
                  setState(() {});
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: primaryColor)),
                  child: Row(children: [
                    23.pw,
                    SvgPicture.asset(isdepreciationOnPartChecked
                        ? 'assets/check.svg'
                        : 'assets/uncheck.svg'),
                    30.pw,
                    Text(
                      'Depreciation on parts',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
                ),
              ),
              20.ph,
              GestureDetector(
                onTap: () {
                  isRsmdChecked = !isRsmdChecked;

                  if (isRsmdChecked) {
                    rsmdVal =
                        "Malicious damage,Riot, Strike, Storm & Flood (RSMD)";
                  } else {
                    rsmdVal = "";
                  }

                  print(rsmdVal);
                  print(isRsmdChecked);
                  setState(() {});
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: primaryColor)),
                  child: Row(children: [
                    23.pw,
                    SvgPicture.asset(isRsmdChecked
                        ? 'assets/check.svg'
                        : 'assets/uncheck.svg'),
                    30.pw,
                    Text(
                      'Malicious damage,\n Riot, Strike,\n Storm & Flood (RSMD)',
                      maxLines: 3,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ]),
                ),
              ),
              20.ph,
              GestureDetector(
                onTap: () {
                  geogharapicExtenionsChecked = !geogharapicExtenionsChecked;

                  if (geogharapicExtenionsChecked) {
                    geogharapicExtenionsVal = "KSA";
                  } else {
                    geogharapicExtenionsVal = "";
                  }

                  print(geogharapicExtenionsVal);
                  print(geogharapicExtenionsChecked);
                  setState(() {});
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: primaryColor)),
                  child: Column(
                    children: [
                      10.ph,
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            23.pw,
                            SvgPicture.asset(geogharapicExtenionsChecked
                                ? 'assets/check.svg'
                                : 'assets/uncheck.svg'),
                            30.pw,
                            Text(
                              'Geographical Extension',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ]),
                      geogharapicExtenionsChecked
                          ? DropdownButton<String>(
                              value: geogharapicExtenionsVal,
                              items:
                                  geogharapicExtenionsItems.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                // Handle dropdown item selection if needed

                                setState(() {
                                  geogharapicExtenionsVal = newValue;
                                  print(geogharapicExtenionsVal);
                                });
                              },
                            )
                          : SizedBox(),
                      10.ph
                    ],
                  ),
                ),
              ),
              10.ph,
              Container(
                width: double.infinity,
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
              20.ph,
              MyButton(
                name: 'Continue',
                onTap: () {
                  Get.toNamed(insuranceCompanyPolicy2, arguments: [
                    motorController.text,
                    windSieldVal,
                    replacementCarVal,
                    vipVal,
                    depVal,
                    rsmdVal,
                    geogharapicExtenionsVal
                  ]);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SubHeading extends StatelessWidget {
  final String title;
  const SubHeading({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        color: Colors.black,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 0,
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String? name;
  final void Function()? onTap;
  const MyButton({super.key, required this.name, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 23),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              color: primaryColor, borderRadius: BorderRadius.circular(12)),
          child: Center(
            child: Text(
              name!,
              style: GoogleFonts.montserrat(
                color: const Color(0xFFFBFBFB),
                fontSize: 18,
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String? title;
  const Heading({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: GoogleFonts.poppins(
          color: Color(0xff000000), fontSize: 18, fontWeight: FontWeight.w600),
    );
  }
}
