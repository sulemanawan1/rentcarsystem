import 'package:get/get.dart';
import 'package:rentcarsystem/Screens/Claim%20Page/claim_page.dart';
import 'package:rentcarsystem/Screens/Claim%20Page/claim_page2.dart';
import 'package:rentcarsystem/Screens/Claim%20Page/claim_page3.dart';
import 'package:rentcarsystem/Screens/Insurance%20Company%20Policy/Insurance_company_policy.dart';
import 'package:rentcarsystem/Screens/Insurance%20Company%20Policy/Insurance_company_policy2.dart';
import 'package:rentcarsystem/Screens/Insurance%20Company%20Policy/Insurance_company_policy3.dart';
import 'package:rentcarsystem/Screens/Insurance%20Company%20Policy/Insurance_company_policy4.dart';
import 'package:rentcarsystem/Screens/Insurance%20Company%20Policy/Insurance_company_policy5.dart';

class ScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => const InsuranceCompanyPolicy());
    Get.lazyPut(() => const InsuranceCompanyPolicy2());
    Get.lazyPut(() => const InsuranceCompanyPolicy3());
    Get.lazyPut(() => const InsuranceCompanyPolicy4());
    Get.lazyPut(() => const InsuranceCompanyPolicy5());
    Get.lazyPut(() => const ClaimPage());
    Get.lazyPut(() => const ClaimPage2());
    Get.lazyPut(() => const ClaimPage3());
  }
}
