import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locally_app/features/bottomNavBar/provider/bottom_navbar_provider.dart';
import 'package:locally_app/features/bottomNavBar/view/widgets/bottom_navbar_tab.dart';
import 'package:locally_app/theme/app_colors.dart';
import 'package:locally_app/utils/app_constant.dart';

class BottomNavBarScreenUI extends ConsumerStatefulWidget {
  const BottomNavBarScreenUI({super.key});

  @override
  BottomNavBarScreenUIState createState() => BottomNavBarScreenUIState();
}

class BottomNavBarScreenUIState extends ConsumerState<BottomNavBarScreenUI>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  // late TabController controller;

  @override
  void initState() {
    ref.read(bottomBavBarProvider).initializeBottomNavData(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TextTheme appTextTheme = Theme.of(context).textTheme;
    ColorScheme appColorScheme = Theme.of(context).colorScheme;
    return WillPopScope(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        resizeToAvoidBottomInset: false,
        
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: AppColors.backgroundColor,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavBarTab(
                imgPath: ref.watch(bottomBavBarProvider).currentTabIndex == 0
                    ? 'homeActive.svg'
                    : 'home.svg',
                title: AppConstant.bottomBarHome,
                onTap: () => ref.read(bottomBavBarProvider).onTabSelect(0),
              ),
              BottomNavBarTab(
                imgPath: ref.watch(bottomBavBarProvider).currentTabIndex == 1
                    ? 'profileActive.svg'
                    : 'profile.svg',
                title: AppConstant.bottomBarProfile,
                onTap: () => ref.read(bottomBavBarProvider).onTabSelect(1),
              ),
              
              BottomNavBarTab(
                imgPath: 'isos.png',
                title: AppConstant.bottomBarIsosCall,
                onTap: () => ref.read(bottomBavBarProvider).onTabSelect(2),
              ),
              BottomNavBarTab(
                imgPath: ref.watch(bottomBavBarProvider).currentTabIndex == 3
                    ? 'menuActive.svg'
                    : 'menu.svg',
                title: AppConstant.bottomBarMenu,
                onTap: () => ref.read(bottomBavBarProvider).onTabSelect(3),
              ),
            ],
          ),
        ),
        backgroundColor: appColorScheme.onTertiaryContainer,
        body: ref
            .read(bottomBavBarProvider)
            .userTabs[ref.watch(bottomBavBarProvider).currentTabIndex!],
      ),
      onWillPop: () => ref.read(bottomBavBarProvider).onWillPop(context),
    );
  }
}
