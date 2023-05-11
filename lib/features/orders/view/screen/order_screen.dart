import 'package:flutter/material.dart';
import 'package:locally_app/routes/app_navigation.dart';
import 'package:locally_app/routes/app_navigation_routes.dart';
import 'package:locally_app/widgets/appBar/my_appbar.dart';
import 'package:locally_app/widgets/button/custom_button.dart';
import 'package:sizer/sizer.dart';
// import 'horizontal_bar.dart';

class OrderScreenUI extends StatefulWidget {
  const OrderScreenUI({Key? key}) : super(key: key);

  @override
  State<OrderScreenUI> createState() => _OrderScreenUIState();
}

class _OrderScreenUIState extends State<OrderScreenUI> {
  bool isPast = false;

  void updateIsPast(bool value) {
    setState(() {
      isPast = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
          title: "Orders",
          onBackPressed: () {
            AppNavigation.goBack();
          }),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              ToggleButton(isDelivery: isPast, updateIsPast: updateIsPast),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 7,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: PopularItemHorizontal(isPast: isPast)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: CustomFloatingButton(itemCount: 5),
      // body: SingleChildScrollView(
      //   child: Form(
      //     // key: loginRead.loginFormKey,
      //     child: Container(
      //       height: MediaQuery.of(context).size.height - 100,
      //       margin: EdgeInsets.symmetric(horizontal: 5.w),
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           SizedBox(height: 5.0.h),
      //           Text(
      //             "Verify Your Number",
      //             style:
      //             TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
      //           ),
      //           SizedBox(height: 1.0.h),
      //           RichText(
      //             text: const TextSpan(
      //               style: TextStyle(
      //                 color: Color(0xFF6B829D),
      //               ),
      //               children: [
      //                 TextSpan(text: 'Code sent you to '),
      //                 TextSpan(
      //                     text: '03337699706 ',
      //                     style: TextStyle(color: Color(0xFF064769))),
      //               ],
      //             ),
      //           ),
      //           SizedBox(height: 5.0.h),
      //           OtpTextField(
      //             numberOfFields: 6,
      //             filled: true,
      //             fillColor: const Color(0xFFEDF4F8),
      //             fieldWidth: 12.w,
      //             //set to true to show as box or false to show as dash
      //             showFieldAsBox: true,
      //             //runs when a code is typed in
      //             onCodeChanged: (String code) {
      //               //handle validation or checks here
      //             },
      //             onSubmit: (String verificationCode) {
      //               AppNavigation.navigateTo(AppNavRoutes.locationRoute);
      //               // showDialog(
      //               //     context: context,
      //               //     builder: (context) {
      //               //       return AlertDialog(
      //               //         title: Text("Verification Code"),
      //               //         content: Text('Code entered is $verificationCode'),
      //               //       );
      //               //     });
      //             }, // end onSubmit
      //           ),
      //           SizedBox(
      //             height: 5.0.h,
      //           ),
      //           SizedBox(
      //             width: MediaQuery.of(context).size.width,
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.center,
      //               children: [
      //                 const Text(
      //                   "Didn't receive code?",
      //                   style: TextStyle(color: Color(0xFF6B829D)),
      //                 ),
      //                 SizedBox(
      //                   height: 0.5.h,
      //                 ),
      //                 const Text("Please wait 00:28",
      //                     style: TextStyle(color: Color(0xFF064769))),
      //               ],
      //             ),
      //           )
      //           // const TextFormFieldCustom(
      //           //     labelText: "Enter Name", icon: Icons.person),
      //           // SizedBox(
      //           //   height: 3.0.h,
      //           // ),
      //           // const TextFormFieldCustom(
      //           //     labelText: "Email (Optional)", icon: Icons.person),
      //           // SizedBox(
      //           //   height: 7.0.h,
      //           // ),
      //           // CustomButton(
      //           //   title: "Submit",
      //           //   color: const Color(0xFF064769),
      //           //   fontColor: const Color(0xFFFFFFFF),
      //           //   fontSize: 18,
      //           //   showIcon: false,
      //           //   fontWeight: FontWeight.w300,
      //           //   minSize: Size(72.w, 8.h),
      //           //   onPressed: () {
      //           //     print("clicked");
      //           //   },
      //           // )
      //         ],
      //       ),
      //       // child: Column(
      //       //   mainAxisAlignment: MainAxisAlignment.center,
      //       //   crossAxisAlignment: CrossAxisAlignment.start,
      //       //   children: [
      //       //     // SizedBox(
      //       //     //   height: 10.h,
      //       //     // ),
      //       //     // Column(
      //       //     //   children: [
      //       //     //     const SizedBox(
      //       //     //       height: 10,
      //       //     //     ),
      //       //     //     Padding(
      //       //     //       padding: const EdgeInsets.only(
      //       //     //           left: 10, right: 10, bottom: 10),
      //       //     //       child: SvgPicture.asset(
      //       //     //         '${AppConstant.assetImages}logo.svg',
      //       //     //       ),
      //       //     //     ),
      //       //     //   ],
      //       //     // ),
      //       //     // Align(
      //       //     //   alignment: Alignment.center,
      //       //     //   child: SvgPicture.asset(
      //       //     //     '${AppConstant.assetImages}btms.svg',
      //       //     //     height: 1.h,
      //       //     //   ),
      //       //     // ),
      //       //     // SizedBox(
      //       //     //   height: 10.h,
      //       //     // ),
      //       //     Padding(
      //       //       padding: const EdgeInsets.only(left: 15),
      //       //       child: AutoSizeText(
      //       //         appLabels["loginScreen"]["loginToContinue"].toString(),
      //       //         maxLines: 1,
      //       //         style: const TextStyle(
      //       //             fontSize: 10,
      //       //             color: Color(0xFF94A2BE),
      //       //             fontFamily: "Roboto-Light"),
      //       //       ),
      //       //     ),
      //       //     SizedBox(
      //       //       height: 3.h,
      //       //     ),
      //       //     Padding(
      //       //       padding: const EdgeInsets.only(left: 15, right: 15),
      //       //       child: Column(
      //       //         mainAxisAlignment: MainAxisAlignment.start,
      //       //         crossAxisAlignment: CrossAxisAlignment.start,
      //       //         children: [
      //       //           // AutoSizeText(
      //       //           //   appLabels["loginScreen"]["emailPhone"].toString(),
      //       //           //   maxLines: 1,
      //       //           //   style: const TextStyle(
      //       //           //       fontSize: 11,
      //       //           //       color: Color(0xFFFFFFFF),
      //       //           //       fontFamily: "Roboto-Light"),
      //       //           // ),
      //       //           SizedBox(
      //       //             height: 0.8.h,
      //       //           ),
      //       //           CustomTextFormField(
      //       //             context: context,
      //       //             autoValidateMode: AutovalidateMode.onUserInteraction,
      //       //             controller: loginRead.emailController,
      //       //             isFilled: false,
      //       //             leadingIcon: Transform.scale(
      //       //               scale: 0.4,
      //       //               child: SvgPicture.asset(
      //       //                 '${AppConstant.assetImages}user.svg',
      //       //                 height: 14,
      //       //               ),
      //       //             ),
      //       //             hintFont: 10,
      //       //             labelText:"Enter Name",
      //       //             inputType: TextInputType.emailAddress,
      //       //             validator: (value) => validatorEmail(value: value),
      //       //
      //       //           ),
      //       //           CustomTextFormField(
      //       //             context: context,
      //       //             // autoValidateMode: AutovalidateMode.onUserInteraction,
      //       //             controller: loginRead.emailController,
      //       //             isFilled: false,
      //       //             leadingIcon: Transform.scale(
      //       //               scale: 0.4,
      //       //               child: SvgPicture.asset(
      //       //                 '${AppConstant.assetImages}user.svg',
      //       //                 height: 14,
      //       //               ),
      //       //             ),
      //       //             hintFont: 10,
      //       //             labelText:"Email (Optional)",
      //       //             inputType: TextInputType.emailAddress,
      //       //             validator: (value) => validatorEmail(value: value),
      //       //
      //       //           ),
      //       //           SizedBox(
      //       //             height: 5.h,
      //       //           ),
      //       //           CustomButton(
      //       //             title: appLabels["common"]["login"].toString(),
      //       //             color: const Color(0xFF00ACE8),
      //       //             fontColor: const Color(0xFFFFFFFF),
      //       //             fontSize: 12,
      //       //             showIcon: false,
      //       //             fontWeight: FontWeight.w500,
      //       //             minSize: Size(72.w, 5.h),
      //       //             onPressed: () {
      //       //               // AppNavigation.navigateTo(AppNavRoutes.homeRoute);
      //       //               if (loginRead.loginFormKey.currentState!.validate()) {
      //       //                 // loginRead.userSignIn();
      //       //               }
      //       //             },
      //       //           ),
      //       //           SizedBox(
      //       //             height: 2.h,
      //       //           ),
      //       //           GestureDetector(
      //       //             onTap: () => AppNavigation.navigateTo(
      //       //                 AppNavRoutes.webViewScreen),
      //       //             child: const AutoSizeText(
      //       //               "Forgot Password?",
      //       //               maxLines: 1,
      //       //               style: TextStyle(
      //       //                   fontSize: 11,
      //       //                   color: Color(0xFFFFFFFF),
      //       //                   fontFamily: "Roboto-Light"),
      //       //             ),
      //       //           ),
      //       //         ],
      //       //       ),
      //       //     ),
      //       //   ],
      //       // ),
      //     ),
      //   ),
      // ),
    );
  }
}

class ToggleButton extends StatelessWidget {
  final bool isDelivery;
  final Function(bool) updateIsPast;

  const ToggleButton(
      {super.key, required this.isDelivery, required this.updateIsPast});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 220,
      decoration: BoxDecoration(
        color: Color(0xFFf1f1f1),
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            width: 100,
            child: GestureDetector(
              onTap: () {
                // setState(() {
                //   _isDelivery = true;
                // });
                updateIsPast(false);
              },
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: isDelivery ? Color(0xFFf1f1f1) : Color(0xFF064769),
                  borderRadius: BorderRadius.circular(5),
                ),
                alignment: Alignment.center,
                child: SizedBox(
                  width: 90,
                  child: Center(
                    child: Text(
                      "Active Orders",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: isDelivery ? Colors.black : Colors.white,
                          fontSize: 11),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            width: 120,
            child: GestureDetector(
              onTap: () {
                // setState(() {
                //   _isDelivery = false;
                // });
                updateIsPast(true);
              },
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: isDelivery ? Color(0xFF064769) : Color(0xFFf1f1f1),
                  borderRadius: BorderRadius.circular(5),
                ),
                alignment: Alignment.center,
                child: Center(
                  child: SizedBox(
                    width: 100,
                    child: Text(
                      "Past Orders",
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                        color: isDelivery ? Colors.white : Colors.black,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PopularItemHorizontal extends StatelessWidget {
  final bool isPast;
  const PopularItemHorizontal({
    super.key,
    required this.isPast,
  });

  // void _showBottomSheet(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     isScrollControlled: true,
  //     builder: (BuildContext context) {
  //       return Container(
  //         height: MediaQuery.of(context).size.height *
  //             0.5, // set the initial height here
  //         child: DraggableScrollableSheet(
  //           expand: true,
  //           builder: (BuildContext context, ScrollController scrollController) {
  //             return Container(
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.only(
  //                   topLeft: Radius.circular(20.0),
  //                   topRight: Radius.circular(20.0),
  //                 ),
  //                 color: Colors.white,
  //               ),
  //               child: ListView.builder(
  //                 controller: scrollController,
  //                 itemCount: 50,
  //                 itemBuilder: (BuildContext context, int index) {
  //                   return ListTile(
  //                     title: Text('Item $index'),
  //                   );
  //                 },
  //               ),
  //             );
  //           },
  //         ),
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppNavigation.navigateTo(AppNavRoutes.orderStatusRoute);
      },
      child: Material(
        elevation: 5.0,
        shadowColor: Color(0xffB2C0CE),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=250&q=80',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Regular Specify Zinger Burger",
                                style: TextStyle(
                                    color: Color(0xFF064769),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "28 ounces freshly ground beef preferably the blue Label Burger.",
                            style: TextStyle(
                              color: Color(0xff6B829D),
                              fontSize: 11,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "Rs.260.00",
                            style: TextStyle(
                                color: Color(0xFF064769),
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              isPast
                  ? CustomButton(
                      title: "Select items to reorder",
                      color: const Color(0xFF064769),
                      fontColor: const Color(0xFFFFFFFF),
                      fontSize: 18,
                      showIcon: false,
                      fontWeight: FontWeight.w300,
                      minSize: Size(72.w, 5.h),
                      onPressed: () {
                        showModalBottomSheet(
                          enableDrag: true,
                          backgroundColor: Colors.transparent,
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return DraggableScrollableSheet(
                              initialChildSize: 0.8,
                              minChildSize: 0.7,
                              maxChildSize: 1,
                              builder: (BuildContext context,
                                  ScrollController scrollController) {
                                return SingleChildScrollView(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const SizedBox.shrink(),
                                              Container(
                                                width: 30,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black
                                                          .withOpacity(0.3),
                                                      offset: Offset(0, 1),
                                                      blurRadius: 2,
                                                    ),
                                                  ],
                                                ),
                                                child: const Icon(
                                                  Icons.close,
                                                  color: Color(0xffA72622),
                                                  size: 19,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 300,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          color: Color(0xffFBFBFB),
                                          child: const Center(
                                            child: Image(
                                              image: NetworkImage(
                                                'https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=250&q=80',
                                              ),
                                              fit: BoxFit.fill,
                                              height: 250,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Specify Pizza",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              ),
                                              Text(
                                                "Order Details",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Container(
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 4),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Order Number",
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xff6B829D),
                                                      ),
                                                    ),
                                                    Material(
                                                      elevation: 5.0,
                                                      shadowColor:
                                                          Color(0xffB6B7B7),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(4.0),
                                                        child: Container(
                                                          color:
                                                              Color(0xffF1F1F1),
                                                          child:
                                                              Text("#000-123"),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Divider(),
                                              Container(
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 4),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Order From",
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xff6B829D),
                                                      ),
                                                    ),
                                                    Text("Karachi broast")
                                                  ],
                                                ),
                                              ),
                                              Divider(),
                                              Container(
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 4),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Delivery Address",
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xff6B829D),
                                                      ),
                                                    ),
                                                    Flexible(
                                                        child: Text(
                                                      "lorem ag g lipsim text testing long text for addresss os lorem lipsum gagtt",
                                                    ))
                                                  ],
                                                ),
                                              ),
                                              Divider(),
                                              Container(
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 4),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "1x Specific Pizza",
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        "Rs 619.44",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Divider(),
                                              Container(
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 4),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Subtotal",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        "Rs 619.44",
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 4),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Delivery Fee",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color:
                                                            Color(0xff6B829D),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        "Rs 95",
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color:
                                                              Color(0xff6B829D),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Divider(),
                                              Container(
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 4),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "PlatForm Fee",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color:
                                                            Color(0xff6B829D),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        "Rs 95",
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color:
                                                              Color(0xff6B829D),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 4),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Incl. Tax",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color:
                                                            Color(0xff6B829D),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        "Rs 95",
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color:
                                                              Color(0xff6B829D),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 4),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Voucher : John Smith",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color:
                                                            Color(0xff6B829D),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        "Rs 95",
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          color:
                                                              Color(0xff6B829D),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Divider(),
                                              Container(
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 4),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Total (incl. GST)",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        "Rs 193.44",
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              CustomButton(
                                                title:
                                                    "Select items to reorder",
                                                color: const Color(0xFF064769),
                                                fontColor:
                                                    const Color(0xFFFFFFFF),
                                                fontSize: 18,
                                                showIcon: false,
                                                fontWeight: FontWeight.w300,
                                                minSize: Size(72.w, 5.h),
                                                onPressed: () {},
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        );
                      },
                    )
                  : const SizedBox.shrink()
            ],
          ),
        ),
      ),
    );
  }
}

class CustomFloatingButton extends StatelessWidget {
  final int itemCount;

  const CustomFloatingButton({Key? key, this.itemCount = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppNavigation.navigateTo(AppNavRoutes.viewCart);
      },
      child: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Icon(
                Icons.shopping_cart_sharp,
                color: Colors.white,
              ),
            ),
          ),
          // Positioned(
          //   top: 8,
          //   left: 8,
          //   child: Icon(
          //     Icons.shopping_cart,
          //     color: Colors.white,
          //   ),
          // ),
          Positioned(
            top: 7,
            left: 2,
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              constraints: BoxConstraints(
                minWidth: 16,
                minHeight: 16,
              ),
              child: Text(
                itemCount.toString(),
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 10,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
