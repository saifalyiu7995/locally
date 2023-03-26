import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:locally_app/features/login/model/response/user_model.dart';
import 'package:locally_app/network/api_base_helper.dart';
import 'package:locally_app/utils/app_constant.dart';


class LoginServices {
  static Future<Either<String, bool>> signIn(
    String email,
  ) async {
    try {
      bool islogin = false;
    

      return Right(islogin);
    } catch (e) {
      return Left(e.toString());
    }
  }

  static Future<Either<String, bool>> refreshToken() async {
    try {
      bool isLogin = false;
    

      return Right(isLogin);
    } catch (e) {
      return Left(e.toString());
    }
  }

  static signOut() async {
    try {
    
    } catch (error) {
      
    }
  }

  static Future<Either<String, UserModel>> userLogin() async {
    try {
      var response = await ApiBaseHelper.httpGetRequest("LoginUser",
          base: AppConstant.apiBaseURL);

      UserModel userModel = UserModel.fromJson(response);
      return Right(userModel);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
