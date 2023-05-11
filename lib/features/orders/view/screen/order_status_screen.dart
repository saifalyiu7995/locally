import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locally_app/routes/app_navigation.dart';
import 'package:locally_app/widgets/appBar/custom_appbar.dart';
import 'package:sizer/sizer.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class OrderStatusScreen extends StatelessWidget {
  const OrderStatusScreen({Key? key}) : super(key: key);

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
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Estimated Delivery Time",
                  style: TextStyle(
                      color: Color(0xFF6B829D),
                      fontSize: 8.sp,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "15 - 25 mins",
                  style: TextStyle(
                      color: const Color(0xFF041421),
                      fontWeight: FontWeight.w800,
                      fontSize: 20.sp),
                ),
                const SizedBox(
                  height: 25,
                ),
                SvgPicture.asset("assets/images/location_icon.svg"),
                const SizedBox(
                  height: 10,
                ),
                const StepProgressIndicator(
                  totalSteps: 4,
                  currentStep: 2,
                  unselectedColor: Color(0xffD1DBE2),
                  selectedColor: Color(0xff064769),
                ),
                const SizedBox(
                  height: 20,
                ),
                Material(
                  elevation: 5.0,
                  shadowColor: Color(0xffB2C0CE),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(Icons.person_3_rounded),
                          Text(
                            "Chat With Customer Support",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff041421),
                            ),
                          ),
                          Icon(Icons.message),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                OrderDetailComponent(),
                Material(
                  elevation: 5.0,
                  shadowColor: Color(0xffF1F1F1),
                  child: ExpansionTile(
                    title: Text("View Details"),
                    backgroundColor: Colors.white,
                    collapsedBackgroundColor: Colors.white,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 4),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "1x Specific Pizza",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Rs 619.44",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 4),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Subtotal",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Rs 619.44",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 4),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Delivery Fee",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff6B829D),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Rs 95",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff6B829D),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 4),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "PlatForm Fee",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff6B829D),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Rs 95",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff6B829D),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 4),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Incl. Tax",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff6B829D),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Rs 95",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff6B829D),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 4),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Voucher : John Smith",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff6B829D),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Rs 95",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff6B829D),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 4),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Total (incl. GST)",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Rs 193.44",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                    trailing: Icon(
                      Icons.arrow_downward,
                      color: Colors.red,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OrderDetailComponent extends StatelessWidget {
  const OrderDetailComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            "Order Details",
            style: TextStyle(
              color: Color(0xff041421),
              fontSize: 16.sp,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Order Number",
                  style: TextStyle(
                    color: Color(0xff6B829D),
                  ),
                ),
                Material(
                  elevation: 5.0,
                  shadowColor: Color(0xffB6B7B7),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      color: Color(0xffF1F1F1),
                      child: Text("#000-123"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            margin: EdgeInsets.symmetric(vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Order From",
                  style: TextStyle(
                    color: Color(0xff6B829D),
                  ),
                ),
                Container(
                  child: Text("Karachi Broast - Clifton"),
                ),
              ],
            ),
          ),
          Divider(),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text("Delivery Address"),
          //     Container(
          //       child: Text(
          //           "Lorem Ipsum road, 30 no commercial street Faisalabad"
          //       ),
          //     ),
          //   ],
          // ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total (incl. Gst)",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  child: Text(
                    "Rs 619.44",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
