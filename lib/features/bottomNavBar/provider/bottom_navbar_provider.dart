import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locally_app/features/address/view/screen/address_screen.dart';
import 'package:locally_app/features/address/view/screen/address_screen.dart';
import 'package:locally_app/features/category/view/screens/category_screen.dart';
import 'package:locally_app/features/error/view/screen/error_screen.dart';
import 'package:locally_app/features/home/view/screen/home_screen.dart';
import 'package:locally_app/features/menu/view/screen/menu_screen.dart';
import 'package:locally_app/features/orders/view/screen/order_screen.dart';
import 'package:locally_app/features/notification/view/screen/notification_screen.dart';
import 'package:locally_app/features/review/view/screen/review_screen.dart';
import 'package:locally_app/features/review/view/screen/write_review_screen.dart';
import 'package:locally_app/features/shop/view/screen/shop_screen.dart';
import 'package:locally_app/routes/app_navigation.dart';
import 'package:locally_app/theme/app_colors.dart';
import 'package:locally_app/widgets/snackBar/snack_bar_widget.dart';

class BottomNavBarProvider extends ChangeNotifier {
  Ref ref;
  BottomNavBarProvider(this.ref) : super();
  List<Widget> _pages = [];
  List<Widget> get pages => _pages;
  DateTime? _currentBackPressTime;
  late TabController? controller;
  int? currentTabIndex = 0;

  void onTabSelect(int index) {
    currentTabIndex = index;
    notifyListeners();
  }

  // getCurrentTabIndex({int? value = 0}) {
  //   currentTabIndex = value;
  //   if (value == 1) {
  //     ref.read(newRequestProvider).disposeAll();
  //   }
  //   notifyListeners();
  // }

  animateToTabIndex(int index) {
    currentTabIndex = index;
    controller!.animateTo(index,
        duration: const Duration(seconds: 1), curve: Curves.easeOut);
    notifyListeners();
  }

  List<Widget> userTabs = const [
    HomeScreenUI(),
    NotificationScreen(),
    OrderScreenUI(),
    MenuScreenUI(),
  ];
  void initializeBottomNavData(TickerProvider tickerProvider) {
    controller = TabController(
        vsync: tickerProvider, length: userTabs.length, initialIndex: 0);
    _pages = userTabs;
    currentTabIndex = 0;
  }

  Future<bool> onWillPop(BuildContext context) {
    DateTime now = DateTime.now();
    if (AppNavigation.canPop(context)) {
      AppNavigation.goBack();
      return Future.value(false);
    } else {
      if (controller!.index != 0) {
        controller!.index = 0;
        return Future.value(false);
      } else {
        if (_currentBackPressTime == null ||
            now.difference(_currentBackPressTime!) >
                const Duration(seconds: 2)) {
          _currentBackPressTime = now;
          showSnackBar("Double Tap To Exit");
          return Future.value(false);
        }
      }
    }
    return Future.value(true);
  }

  @override
  void dispose() {
    controller!.dispose();
    currentTabIndex = 0;
    super.dispose();
  }
}

final bottomBavBarProvider = ChangeNotifierProvider<BottomNavBarProvider>(
    (ref) => BottomNavBarProvider(ref));
