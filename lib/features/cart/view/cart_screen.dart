import 'package:flutter/material.dart';
import 'package:locally_app/routes/app_navigation.dart';
import 'package:locally_app/routes/app_navigation_routes.dart';
import 'package:locally_app/widgets/appBar/my_appbar.dart';
import 'package:locally_app/widgets/button/custom_button.dart';
import 'package:sizer/sizer.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
          title: "",
          onBackPressed: () {
            AppNavigation.goBack();
          }),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 3.h,
              ),
              Center(child: ToggleButton(isDelivery: isPast, updateIsPast: updateIsPast)),
              SizedBox(
                height: 3.h,
              ),
              Container(
                height: 20.h,
                color: Colors.grey,
                width:double.infinity,
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                "Your Orders",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 3.h,
              ),

                SizedBox(
                  height: 400,
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
              Container(
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    print("button click");
                  }, child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                      Text("add more items" , style: TextStyle(color: Colors.black),),
                    ],
                  ),
                  style: ButtonStyle(
                    backgroundColor:MaterialStateProperty.all(Color(0xffF1F1F1)),

                  ),
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Do you want to add instructions?",
                  prefixIcon: Icon(Icons.notes),
                  prefixIconColor: Colors.black,
                  border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  ),
                  focusedBorder:OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              Text("People also ordered" , style: TextStyle(fontWeight: FontWeight.w700 , fontSize: 18),),
              SizedBox(
                height: 100,
                child: ListView.separated(
                  itemCount: 7,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(vertical: 18 , horizontal: 5),
                  separatorBuilder: (context, index) => SizedBox(width: 10,),
                  // itemBuilder: (context , index) =>Container(color: Colors.red, width: 70, height: 80,),
                  itemBuilder: (context, index) =>
                     Material(
                       elevation: 5.0,
                       shadowColor: Color(0xffB2C0CE),
                       child: Container(
                         width: 300,
                         height: 10,
                         child: Expanded(
                           child: Row(
                             children: [
                               SizedBox(
                                child: Container(
                                  margin: const EdgeInsets.only(left: 10 , right: 5),
                                   height: 40,
                                   width: 55,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(5),
                                     image: const DecorationImage(
                                       image: NetworkImage(
                                         'https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=250&q=80',
                                       ),
                                       fit: BoxFit.cover,
                                     ),
                                   ),
                                 ),
                               ),
                               Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text("Barita" , style: TextStyle(
                                     fontWeight: FontWeight.w700,
                                   ),),
                                   SizedBox(
                                     height: 3,
                                   ),
                                   Row(
                                     children: [
                                       Text("Barita" , style: TextStyle(
                                   fontWeight: FontWeight.w200,
                                         fontSize: 12
                                   ),),
                                       SizedBox(width: 2,),
                                       Text("." , style: TextStyle(
                                         fontWeight: FontWeight.w200,
                                           fontSize: 12
                                       ),
                                       ),
                                       SizedBox(width: 2,),
                                       Text("Italian food" , style: TextStyle(
                                         fontWeight: FontWeight.w200,
                                           fontSize: 12
                                       ),),
                                       SizedBox(width: 15,),
                                       Text("Rs 1600" , style: TextStyle(
                                         fontWeight: FontWeight.w200,
                                           fontSize: 12
                                       ),)
                                     ],
                                   )
                                 ],
                               ),
                               Expanded(child: SizedBox(
                                 child: Align(
                                   alignment: Alignment.topRight,
                                   child: Container(
                                     color: Colors.red,
                                     padding: EdgeInsets.all(1),
                                     child: Icon(
                                       Icons.add,
                                       color: Colors.white,
                                       size: 14,
                                     ),
                                   ),
                                 ),
                               )),
                             ],
                           ),
                         ),
                         // color:Colors.red,
                       ),
                  ),
                ),
              ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Subtotal" , style: TextStyle(fontWeight: FontWeight.w700 , fontSize: 20),),
                  Text("Rs.350.00" ,  style: TextStyle(fontWeight: FontWeight.w700 , fontSize: 20)),

                ],
              ),
              Divider(thickness: 5 , color: Colors.black ,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Delivery" , style: TextStyle( fontSize: 14),),
                  Text("Rs.350.00" ,  style: TextStyle(fontSize: 14)),
                ],

              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Fees & Estimated Tax" , style: TextStyle( fontSize: 14),),
                  Text("Rs.350.00" ,  style: TextStyle(fontSize: 14)),
                ],

              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Discount" , style: TextStyle( fontSize: 14),),
                  Text("Rs.100.00" ,  style: TextStyle(fontSize: 14)),
                ],

              ),
              Divider(thickness: 5 , color: Colors.black ,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("total" , style: TextStyle(fontWeight: FontWeight.w700 , fontSize: 20),),
                  Text("Rs.350.00" ,  style: TextStyle(fontWeight: FontWeight.w700 , fontSize: 20)),

                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Color(0xFF6B829D)),
                      children: [
                        TextSpan(
                            text: 'By signing up you are agreed to the '),
                        TextSpan(
                            text: 'Terms of ',
                            style: TextStyle(color: Color(0xFF064769))),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Color(0xFF6B829D)),
                      children: [
                        TextSpan(
                            text: 'Service ',
                            style: TextStyle(color: Color(0xFF064769))),
                        TextSpan(text: 'and '),
                        TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(color: Color(0xFF064769))),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              CustomButton(
                title: "Sign Up to Check Out",
                color: const Color(0xFF064769),
                fontColor: const Color(0xFFFFFFFF),
                fontSize: 18,
                showIcon: false,
                fontWeight: FontWeight.w300,
                minSize: Size(72.w, 6.h),
                onPressed: () {
                  AppNavigation.navigateTo(AppNavRoutes.loginRoute);
                },
              ),
            ],
          ),
        ),
      ),
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
                    child: Column(
                      children: [
                        Text(
                          "Delivery",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: isDelivery ? Colors.black : Colors.white,
                              fontSize: 11),
                        ),
                        Text(
                          "25min",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: isDelivery ? Colors.black : Colors.white,
                              fontSize: 8),
                        ),
                      ],
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
                print("on tap called");
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
                    child: Column(
                      children: [
                        Text(
                          "Pick up",
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: TextStyle(
                            color: isDelivery ? Colors.white : Colors.black,
                            fontSize: 11,
                          ),
                        ),
                        Text(
                          "25 min",
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: TextStyle(
                            color: isDelivery ? Colors.white : Colors.black,
                            fontSize: 8,
                          ),
                        ),

                      ],
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
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppNavigation.navigateTo(AppNavRoutes.orderStatusRoute);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1.5, color: Colors.grey),
          ),
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
          ],
        ),
      ),
    );
  }
}