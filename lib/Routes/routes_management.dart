import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:rentcarsystem/Routes/screen_binding.dart';
import 'package:rentcarsystem/Routes/set_routes.dart';
import 'package:rentcarsystem/Screens/Claim%20Page/claim_page.dart';
import 'package:rentcarsystem/Screens/Claim%20Page/claim_page2.dart';
import 'package:rentcarsystem/Screens/Claim%20Page/claim_page3.dart';
import 'package:rentcarsystem/Screens/Insurance%20Company%20Policy/Insurance_company_policy.dart';
import 'package:rentcarsystem/Screens/Insurance%20Company%20Policy/Insurance_company_policy2.dart';
import 'package:rentcarsystem/Screens/Insurance%20Company%20Policy/Insurance_company_policy3.dart';
import 'package:rentcarsystem/Screens/Insurance%20Company%20Policy/Insurance_company_policy4.dart';
import 'package:rentcarsystem/Screens/Insurance%20Company%20Policy/Insurance_company_policy5.dart';

class RouteManagement {
  static List<GetPage> getPages() {
    return [
      GetPage(
          name: insuranceCompanyPolicy,
          page: () => InsuranceCompanyPolicy(),
          binding: ScreenBindings(),
          transition: Transition.noTransition),
      GetPage(
          name: insuranceCompanyPolicy2,
          page: () => InsuranceCompanyPolicy2(),
          binding: ScreenBindings(),
          transition: Transition.noTransition),
      GetPage(
          name: insuranceCompanyPolicy3,
          page: () => InsuranceCompanyPolicy3(),
          binding: ScreenBindings(),
          transition: Transition.noTransition),
      GetPage(
          name: insuranceCompanyPolicy4,
          page: () => InsuranceCompanyPolicy4(),
          binding: ScreenBindings(),
          transition: Transition.noTransition),
      GetPage(
          name: insuranceCompanyPolicy5,
          page: () => InsuranceCompanyPolicy5(),
          binding: ScreenBindings(),
          transition: Transition.noTransition),
      GetPage(
          name: claimPage,
          page: () => ClaimPage(),
          binding: ScreenBindings(),
          transition: Transition.noTransition),
      GetPage(
          name: claimPage2,
          page: () => ClaimPage2(),
          binding: ScreenBindings(),
          transition: Transition.noTransition),
      GetPage(
          name: claimPage3,
          page: () => ClaimPage3(),
          binding: ScreenBindings(),
          transition: Transition.noTransition)
    ];
  }
}
