import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:rentcarsystem/Routes/set_routes.dart';
import 'package:rentcarsystem/Screens/Insurance%20Company%20Policy/Insurance_company_policy.dart';
import 'package:rentcarsystem/Widgets/My%20TextFormFields/my_textformfields.dart';
import 'package:rentcarsystem/main.dart';
import 'package:intl/intl.dart';

class InsuranceCompanyPolicy2 extends StatefulWidget {
  const InsuranceCompanyPolicy2({super.key});

  @override
  State<InsuranceCompanyPolicy2> createState() =>
      _InsuranceCompanyPolicy2State();
}

class _InsuranceCompanyPolicy2State extends State<InsuranceCompanyPolicy2> {
  var data = Get.arguments;
  var motorController;
  var windSieldVal;
  var replacementCarVal;
  var vipVal;
  var depVal;
  var rsmdVal;
  var geogharapicExtenionsVal;
  final TextEditingController plateController = TextEditingController();
  final TextEditingController expDateController = TextEditingController();

  var expiryDate;

  Future expDatePick(context) async {
    DateTime? picked = await showDatePicker(
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2020),
        lastDate: new DateTime(2030),
        context: context);
    if (picked != null) {
      picked.toString();
      expDateController.text = picked.toString().split(' ')[0];
      setState(() {});
    } else {
      expDateController.text = DateTime.now().toString().split(' ')[0];
      setState(() {});
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    motorController = data[0];
    windSieldVal = data[1];
    replacementCarVal = data[2];
    vipVal = data[3];
    depVal = data[4];
    rsmdVal = data[5];
    geogharapicExtenionsVal = data[6];
  }

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
          Spacer(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Heading(
                        title: 'We’ll need extra details\nabout your car'),
                    20.ph,
                    const SubHeading(title: "Plate Number"),
                    10.ph,
                    MyTextFormField(
                      hintText: '',
                      controller: plateController,
                    ),
                    10.ph,
                    const SubHeading(title: "Previous Policy Expiry Date"),
                    10.ph,
                    MyTextFormField(
                      controller: expDateController,
                      hintText: '',
                      readOnly: true,
                      onTap: () {
                        expDatePick(context);
                      },
                    ),
                    20.ph,
                    MyButton(
                      name: 'Continue',
                      onTap: () {
                        plateController.text;
                        expDateController.text;

                        Get.toNamed(insuranceCompanyPolicy3);
                      },
                    ),
                  ]),
            ),
          )
        ]),
      ),
    );
  }
}
