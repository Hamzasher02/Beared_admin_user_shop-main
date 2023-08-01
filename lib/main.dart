import 'package:beared_friend/controlScreen.dart';
import 'package:beared_friend/localization_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:beared_friend/Admin%20Module/lib/Providers/ProductProvider/activated_product_provider.dart';
import 'package:beared_friend/Admin%20Module/lib/Providers/ProductProvider/add_product_provider.dart';
import 'package:beared_friend/Admin%20Module/lib/Providers/ProductProvider/de_activate_product_provider.dart';
import 'package:beared_friend/Admin%20Module/lib/Providers/ProductProvider/delete_product_provider.dart';
import 'package:beared_friend/Admin%20Module/lib/Providers/ProductProvider/draft_product_provider.dart';
import 'package:beared_friend/Admin%20Module/lib/Providers/ProductProvider/in_active_product_provider.dart';
import 'package:beared_friend/Admin%20Module/lib/Providers/ProductProvider/outOf_stock_provider.dart';
import 'package:beared_friend/Admin%20Module/lib/Providers/ProductProvider/update_stock_provider.dart';
import 'package:beared_friend/Admin%20Module/lib/Providers/BeardContestProvider/beard_contest_detele_provider.dart';
import 'package:beared_friend/Admin%20Module/lib/Providers/BeardContestProvider/beard_contest_provider.dart';
import 'package:beared_friend/Admin%20Module/lib/Providers/BeardContestProvider/beard_contest_shop_block_provider.dart';
import 'package:beared_friend/Admin%20Module/lib/Providers/BeardContestProvider/contest_time_provider.dart';
import 'package:beared_friend/Admin%20Module/lib/Providers/dashBoard_provider.dart';
import 'package:beared_friend/Admin%20Module/lib/Providers/ProductProvider/get_active_product_provider.dart';
import 'package:beared_friend/Admin%20Module/lib/Providers/login_provider.dart';
import 'package:beared_friend/Admin%20Module/lib/Providers/member_block_provider.dart';
import 'package:beared_friend/Admin%20Module/lib/Providers/member_delete_provider.dart';
import 'package:beared_friend/Admin%20Module/lib/Providers/recent_winner_provider.dart';
import 'package:beared_friend/Admin%20Module/lib/Providers/user_baraber_shop_block_provider.dart';
import 'package:beared_friend/Admin%20Module/lib/Providers/user_baraber_shop_delete_provider.dart';
import 'package:beared_friend/Admin%20Module/lib/Providers/user_managment_provider.dart';
import 'package:beared_friend/Admin%20Module/lib/Providers/user_member_provider.dart';
import 'package:beared_friend/Member%20Module/lib/Providers/member_login_provider.dart';
import 'package:beared_friend/Shop%20Model/lib/App%20Constants/App%20Colors/app_colors.dart';
import 'package:beared_friend/Shop%20Model/lib/Views/Account%20Setting%20View/Providers/language_dropdown_provider.dart';
import 'package:beared_friend/Shop%20Model/lib/Views/Bottom%20Nav%20Bar/Providers/bottom_nav_bar_provider.dart';
import 'package:beared_friend/Shop%20Model/lib/Views/Compaign%20View/Providers/switch_provider.dart';
import 'package:beared_friend/Shop%20Model/lib/Views/Create%20Compaign%20View/Providers/create_compaign_dropdown_provider.dart';
import 'package:beared_friend/Shop%20Model/lib/Views/Participate%20View/Providers/rules_check_box_provider.dart';
import 'package:beared_friend/Shop%20Model/lib/Views/Participate%20View/Providers/terms_check_box_provider.dart';
import 'package:beared_friend/Shop%20Model/lib/Views/Product%20View/Providers/product_provider.dart';
import 'package:beared_friend/Shop%20Model/lib/Views/Signup%20View/Providers/signup_policy_check_box_provider.dart';
import 'package:beared_friend/Shop%20Model/lib/Views/Signup%20View/Providers/signup_terms_check_box_provider.dart';
import 'package:beared_friend/Shop%20Model/lib/Views/Stats%20View/Providers/stats_dropdown_provider.dart';
import 'package:beared_friend/Shop%20Model/lib/Views/Timing%20View/Providers/days_dropdown_provider.dart';
import 'package:beared_friend/Shop%20Model/lib/Views/Timing%20View/Providers/hours_dropdown_provider.dart';
import 'package:beared_friend/Shop%20Model/lib/Views/Timing%20View/Providers/timing_provider.dart';

import 'Admin Module/lib/Providers/BeardContestProvider/add_new_date_provider.dart';
import 'Admin Module/lib/Providers/BeardContestProvider/add_new_staff_provider.dart';
import 'Admin Module/lib/Providers/BeardContestProvider/contest_time_update_provider.dart';
import 'Admin Module/lib/Providers/ProductProvider/update_product_provider.dart';
import 'Admin Module/lib/Providers/ProfileProvider/change_password_provider.dart';
import 'Admin Module/lib/Providers/ProfileProvider/update_profile_provider.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final localizationController = Get.put(LocalizationController());
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetBuilder<LocalizationController>(builder: (controller) {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'First Method',
              theme: ThemeData(
                fontFamily: GoogleFonts.nunito(fontSize: 14.sp).fontFamily,
                brightness: Brightness.dark,
                scaffoldBackgroundColor: AppColors.scaffoldColor,
                appBarTheme:
                    AppBarTheme(backgroundColor: AppColors.scaffoldColor),
                useMaterial3: true,
                textTheme:
                    Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
              ),
              locale: controller.currentLanguage != ''
                  ? Locale(controller.currentLanguage, '')
                  : null,
              localeResolutionCallback:
                  LocalizationService.localeResolutionCallBack,
              supportedLocales: LocalizationService.supportedLocales,
              localizationsDelegates: LocalizationService.localizationsDelegate,
              home: ControlScreen(),
            );
          });
        }
        // return MultiProvider(
        //     providers: [
        //       ChangeNotifierProvider(
        //         create: (context) => ProductProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => TimingProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => HoursDropdownProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => DaysDropdownProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => LanguageDropdownProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => BottomNavigationBarProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => SwitchProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => CreateCompaignDropdownProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => RulesCheckBoxProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => TermsCheckBoxProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => SignupPolicyCheckBoxProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => SignupTermsCheckBoxProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => StatsDropDownProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => AuthProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => AuthMemberProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => AdminDashBoardProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => AdminBaraberShopProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => AdminUserBaraberShopDeleteProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => AdminUserBaraberShopBlockProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => AdminBeardContestProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => AdminBeardContestDeleteProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => BeardContestBlockProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => AdminBeardRecentWinnerProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => AdminUserMemberProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => AdminUserMemberBlockProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => AdminUserMemberDeleteProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => AdminContestTimeProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => AdminActiveProductProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => PostAddProductProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => AdminOutOfStockProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => ActiveProductDeleteProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => UpdateStockProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => DraftProductProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => InActiveProductProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => DeActivateProductProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => ActivatedProductProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => UpdateTimeProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => PostDateProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => AddNewStaffProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => UpdateProductProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => AdminChangePasswordProvider(),
        //       ),
        //       ChangeNotifierProvider(
        //         create: (context) => UpdateProfileProvider(),
        //       ),
        //     ],
        //       child:
        // },

        //
//         );
//       },
//       child: const ControlScreen(),
        );
  }
}
