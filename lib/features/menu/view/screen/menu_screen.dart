import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:locally_app/features/address/view/screen/address_screen.dart';
import 'package:locally_app/features/bottomNavBar/provider/bottom_navbar_provider.dart';
import 'package:locally_app/features/menu/view/widgets/menu_item.dart';
import 'package:locally_app/routes/app_navigation.dart';
import 'package:locally_app/routes/app_navigation_routes.dart';
import 'package:locally_app/widgets/customDialog/custom_dialog_logout.dart';
import 'package:sizer/sizer.dart';

class MenuScreenUI extends ConsumerWidget {
  const MenuScreenUI({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                        // ref.read(bottomBavBarProvider).animateToTabIndex(1);
                        AppNavigation.navigateTo(AppNavRoutes.orderScreenRoute);
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
                      onTap: () =>
                          AppNavigation.navigateTo(AppNavRoutes.reviewScreen),
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
                    onTap: () => showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      enableDrag: true,
                      backgroundColor: Colors.white,
                      clipBehavior: Clip.antiAlias,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                      ),
                      builder: (BuildContext c) {
                        return const AddressBottomSheet(
                            initialPosition: LatLng(37.7749, -122.4194),
                            initialZoom: 12);
                      },
                    ),
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
