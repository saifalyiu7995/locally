
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locally_app/features/login/services/login_services.dart';
import 'package:locally_app/routes/app_navigation.dart';
import 'package:locally_app/routes/app_navigation_routes.dart';
import 'package:locally_app/widgets/customDialog/custom_dialog.dart';
import 'package:locally_app/widgets/snackBar/snack_bar_widget.dart';


class LoginProvider extends ChangeNotifier {
  Ref ref;
  LoginProvider(this.ref);

  bool loader = false;
  TextEditingController emailController = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  bool userIsLogin = false;
  
  Future<void> userSignIn() async {
    FocusManager.instance.primaryFocus?.unfocus();
    showLoginLoadingIndicator();
    final result = await LoginServices.signIn(
      emailController.text.toString(),
    );
    result.fold(
      (l) {
        hideOpenDialog();
        showSnackBar(l);
      },
      (r) async {
        if (r) {
          await userLogIn();
        } else {
          hideOpenDialog();
          showSnackBar("Login Failed.Please try again");
        }
      },
    );
  }

  Future<void> userLogIn() async {
    final result = await LoginServices.userLogin();
    result.fold(
      (l) {
        hideOpenDialog();
        showSnackBar(l);
      },
      (r) async {
        if (r.status == 0) {
       

          AppNavigation.pushReplacementTo(AppNavRoutes.homeRoute);
        } else {
          hideOpenDialog();
          showSnackBar("Login Failed.Please try again");
        }
      },
    );
  }

  // checkUserLogin() async {
  //   String? token = await AppLocalStorage()
  //       .getStringPrefValue(key: AppConstant.accessToken);

  //   bool isLogin =
  //       token != null && token != "null" && token != "" ? true : false;
  //   setUserLogin = isLogin;
  //   if (isLogin) {
  //     getUser();
  //   }
  //   notifyListeners();
  // }

  // Future<void> saveUser() async {
  //   AppLocalStorage().setStringPrefValue(key: "user", value: jsonEncode(user));
  // }

  // Future<void> getUser() async {
  //   var userJson = await AppLocalStorage().getStringPrefValue(key: "user");
  //   if (userJson != null) {
  //     User savedUser = User.fromJson(jsonDecode(userJson.toString()));
  //     user = savedUser;
  //   } else {
  //     await LoginServices.signOut();
  //   }

  //   notifyListeners();
  // }
}

final loginProvider =
    ChangeNotifierProvider<LoginProvider>((ref) => LoginProvider(ref));
