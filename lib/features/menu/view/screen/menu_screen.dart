import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locally_app/features/bottomNavBar/provider/bottom_navbar_provider.dart';
import 'package:locally_app/features/login/provider/login_provider.dart';
import 'package:locally_app/features/menu/view/widgets/menu_header.dart';
import 'package:locally_app/features/menu/view/widgets/menu_item.dart';
import 'package:locally_app/routes/app_navigation.dart';
import 'package:locally_app/widgets/customDialog/custom_dialog_logout.dart';
import 'package:sizer/sizer.dart';

class MenuScreenUI extends ConsumerWidget {
  const MenuScreenUI({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    LoginProvider loginWatch = ref.watch(loginProvider);
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MenuHeader(
              name: '',
              workPhrase: '',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(
                    color: Color(0xffE8E8E8),
                    thickness: 1.5,
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  MenuItemWidget(
                      iconName: "profile_menu.svg",
                      menuItemTitle: "My Profile",
                      onTap: () async {
                        ref.read(bottomBavBarProvider).animateToTabIndex(1);
                        
                      }),
                  SizedBox(
                    height: 2.h,
                  ),
                  MenuItemWidget(
                    iconName: "document.svg",
                    menuItemTitle: "My Request",
                    onTap: () {
                      ref.read(bottomBavBarProvider).animateToTabIndex(0);
                    },
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: MenuItemWidget(
                      iconName: "new_request.svg",
                      menuItemTitle: "New Request",
                      onTap: () {
                       
                      },
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  MenuItemWidget(
                    iconName: "my_approvals.svg",
                    menuItemTitle: "My Approvals",
                    onTap: () {
                    
                    },
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  const Divider(
                    color: Color(0xffE8E8E8),
                    thickness: 1.5,
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  MenuItemWidget(
                    iconName: "faqs.svg",
                    menuItemTitle: "FAQs",
                    onTap: () {
                     
                    },
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  MenuItemWidget(
                    iconName: "user_guide.svg",
                    menuItemTitle: "User Video Guide",
                    onTap: () {
                      //AppNavigation.navigateTo(AppNavRoutes.download);
                    },
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  MenuItemWidget(
                    iconName: "travel_tips.svg",
                    menuItemTitle: "General Travel Tips",
                    onTap: () {
                     
                    },
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  MenuItemWidget(
                    iconName: "travel_policy.svg",
                    menuItemTitle: "Global Travel Policy",
                    onTap: () {
                     
                    },
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  MenuItemWidget(
                    iconName: "insurance.svg",
                    menuItemTitle: "Insurance Q and A",
                    onTap: () {
                     
                    },
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  MenuItemWidget(
                    iconName: "travel_company.svg",
                    menuItemTitle: "Travel Management Companies",
                    onTap: () {
                     
                    },
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  MenuItemWidget(
                    iconName: "airplane.svg",
                    menuItemTitle: "TAQA Safe Airline List",
                    onTap: () {
                     
                    },
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  MenuItemWidget(
                    iconName: "money.svg",
                    menuItemTitle: "TAQA Corporate Rates with Hotels",
                    onTap: () {
                     
                    },
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  MenuItemWidget(
                    iconName: "management_program.svg",
                    menuItemTitle: "Travel Risk Management Program",
                    onTap: () {
                     
                    },
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  const Divider(
                    color: Color(0xffE8E8E8),
                    thickness: 1.5,
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  MenuItemWidget(
                    iconName: "logout.svg",
                    menuItemTitle: "Logout",
                    isLogout: true,
                    onTap: () async {
                      showLogoutConfirmationDialog(
                        context: context,
                        onPositiveTap: () async {
                         
                        },
                        onNegativeTap: () {
                          AppNavigation.goBack();
                        },
                      );
                    },
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
