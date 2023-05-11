class AppConstant {
  static const String appName = "BTMS";
  static const String appVersion = "1.0.0";

  static const String assetFonts = "assets/fonts/";
  static const String assetImages = "assets/images/";
  static const String textFont = "";

  //Base URL
  static const String apiBaseURL = "https://btmsapitest.taqa.com/Service1.svc/";

  //tenant
  static const String tenant = "31ff3ba2-f2e7-4643-b9f0-d55e052a5b45";

  //client Id
  static const String clientId = "cc6091f4-436e-45d0-a704-ce77942be8c0";

  //scope
  static const String scope = "openid profile offline_access User.read";

  //redirect url
  static const String redirectUrl =
      "msauth://com.example.taqa_btms_app/n0vDiPKvlaub1YT8MMGN54SUD%2Bw%3D";

  //Regex
  static RegExp onlyTextRegex = RegExp(r'^[a-zA-Z]+$');
  static RegExp phoneRegex = RegExp(r'^(?!(?:(\d)\1{4,}))\d{5,15}$');
  static RegExp passportRegex = RegExp(r'^[a-zA-Z0-9]{9}$');
  static RegExp emailRegex = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

  //Internet Exception Message
  static const String exceptionMessage =
      "Something Went Wrong, Please Try Again Later";
  static const String feedExceptionMessage =
      "Server Not Connected, Please Retry";
  static const String badResponseFormat = 'Bad Response Format';
  static const String slowInternetMsg = 'Slow Internet, Please Try Again';
  static const String noInternetMsg =
      'No Internet Connection, Connect Your Internet & Try Again';

  //NavBar
  static const String bottomBarHome = 'Home';
  static const String bottomBarProfile = 'My Profile';
  static const String bottomBarRequest = 'Travel Request';
  static const String bottomBarNewRequest = 'My Approvals';
  static const String bottomBarMenu = 'Menu';
  static const String bottomBarIsosCall = "ISOS";

  //AppLocalData
  static const String isLogin = "isLogin";
  static const String userTokenKey = "userTokenKey";
  static const String roleId = "RoleId";
  static const String userName = "userName";
  static const String token = "token";
  static const String loginUserName = "loginUserName";
  static const String loginPassword = "loginPassword";
  static const String loginTpye = "loginTpye";
  static const String taskId = "taskId";
  static const String mauzaId = "mauzaId";
  static const String girdawarStart = "girdawarStart";
  static const String assignedTask = "assignedTask";
  static const String isCoordinatesEnable = "isCoordinatesEnable";
  static const String accessToken = "accessToken";
  static const String expiryTime = "expiryTime";

  //Directory path
  static const String downloadDirectoryPath = "/storage/emulated/0/Download";

  //Regex
  static RegExp urduRegex =
      RegExp(r"^[\u0600-\u06FF\u0750-\u077F\uFB50-\uFDFF\uFE70‌​-\uFEFF\s]+$");

  //Document pages IDs
  static Map<String, int> documentPageIds = {
    "generalTravelTips": 1,
    "globalTravelPolicy": 2,
    "InsuranceQ&A": 3,
    "taqaSafeAirlineList": 4,
    "taqaCorporateRatesWithHotels": 5,
    "travelRiskManagementProgram": 6
  };
}
