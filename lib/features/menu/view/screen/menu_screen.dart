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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 3.h,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              child: Text(
                'Hello, Alamdar',
                style: TextStyle(
                  color: Color(0xff041421),
                  fontSize: 22,
                ),
              ),
            ),
            const Divider(
              color: Color(0xffE8E8E8),
              thickness: 1.5,
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 3.h,
                  ),
                  MenuItemWidget(
                      iconName: "my_order.svg",
                      menuItemTitle: "My Orders",
                      onTap: () async {
                        ref.read(bottomBavBarProvider).animateToTabIndex(1);
                      }),
                  const Divider(
                    color: Color(0xffE8E8E8),
                    thickness: 1.5,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  MenuItemWidget(
                    iconName: "my_details.svg",
                    menuItemTitle: "My Details",
                    onTap: () {
                      ref.read(bottomBavBarProvider).animateToTabIndex(0);
                    },
                  ),
                  const Divider(
                    color: Color(0xffE8E8E8),
                    thickness: 1.5,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: MenuItemWidget(
                      iconName: "headphone.svg",
                      menuItemTitle: "Get Help",
                      onTap: () {},
                    ),
                  ),
                  const Divider(
                    color: Color(0xffE8E8E8),
                    thickness: 1.5,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  MenuItemWidget(
                    iconName: "wallet.svg",
                    menuItemTitle: "Payment Methods",
                    onTap: () {},
                  ),
                  const Divider(
                    color: Color(0xffE8E8E8),
                    thickness: 1.5,
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  MenuItemWidget(
                    iconName: "my_address.svg",
                    menuItemTitle: "My Address",
                    onTap: () {},
                  ),
                  const Divider(
                    color: Color(0xffE8E8E8),
                    thickness: 1.5,
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  MenuItemWidget(
                    iconName: "",
                    menuItemTitle: "FAQ's",
                    onTap: () {},
                  ),
                  const Divider(
                    color: Color(0xffE8E8E8),
                    thickness: 1.5,
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  MenuItemWidget(
                    iconName: "",
                    menuItemTitle: "About",
                    onTap: () {},
                  ),
                  const Divider(
                    color: Color(0xffE8E8E8),
                    thickness: 1.5,
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  MenuItemWidget(
                    iconName: "",
                    menuItemTitle: "Logout",
                    isLogout: true,
                    onTap: () async {
                      showLogoutConfirmationDialog(
                        context: context,
                        onPositiveTap: () async {},
                        onNegativeTap: () {
                          AppNavigation.goBack();
                        },
                      );
                    },
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  const Divider(
                    color: Color(0xffE8E8E8),
                    thickness: 1.5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
