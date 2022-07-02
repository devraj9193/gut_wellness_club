import 'package:flutter/material.dart';
import 'package:gut_wellness_app/widgets/constants.dart';
import 'package:gut_wellness_app/widgets/widgets.dart';
import 'package:sizer/sizer.dart';

import '../Introduction Screens/gut_detox_program_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String selectedOption = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding:
                EdgeInsets.only(left: 4.w, right: 4.w, top: 1.h, bottom: 5.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildAppBar(() {
                  Navigator.pop(context);
                }),
                SizedBox(height: 2.h),
                Text(
                  "Payment",
                  style: TextStyle(
                      fontFamily: "GothamRoundedBold_21016",
                      color: gPrimaryColor,
                      fontSize: 12.sp),
                ),
                SizedBox(height: 3.h),
                buildDetails(),
                SizedBox(height: 3.h),
                Text(
                  "Select Your Payment Mode",
                  style: TextStyle(
                      fontFamily: "PoppinsMedium",
                      color: gMainColor,
                      fontSize: 12.sp),
                ),
                paymentOption(),
                selectedOption.isEmpty
                    ? Center(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 1.h, horizontal: 25.w),
                          decoration: BoxDecoration(
                            color: gMainColor,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: gMainColor, width: 1),
                          ),
                          child: Text(
                            'Start',
                            style: TextStyle(
                              fontFamily: "GothamRoundedBold_21016",
                              color: gPrimaryColor,
                              fontSize: 13.sp,
                            ),
                          ),
                        ),
                      )
                    : Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    const GutDetoxProgramScreen(),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 1.h, horizontal: 25.w),
                            decoration: BoxDecoration(
                              color: gPrimaryColor,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: gMainColor, width: 1),
                            ),
                            child: Text(
                              'Start',
                              style: TextStyle(
                                fontFamily: "GothamRoundedBold_21016",
                                color: gWhiteColor,
                                fontSize: 13.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  paymentOption() {
    return Padding(
      padding: EdgeInsets.only(left: 5.w, top: 4.h, bottom: 6.h),
      child: Column(
        children: [
          ListTile(
            leading: SizedBox(
              height: 5.h,
              child: const Image(
                image:
                    AssetImage("assets/images/splash_screen/credit-card.png"),
              ),
            ),
            title: Text(
              'Credit / Debit Card',
              style: TextStyle(
                  fontFamily: "GothamBook", color: gTextColor, fontSize: 11.sp),
            ),
            trailing: Radio(
              value: "Credit / Debit Card",
              activeColor: gMainColor,
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value as String;
                });
              },
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 2.h),
            height: 1,
            color: Colors.grey.withOpacity(0.3),
          ),
          ListTile(
            leading: SizedBox(
              height: 5.h,
              child: const Image(
                image: AssetImage(
                    "assets/images/splash_screen/cashless-payment (1).png"),
              ),
            ),
            title: Text(
              'Net Banking',
              style: TextStyle(
                  fontFamily: "GothamBook", color: gTextColor, fontSize: 11.sp),
            ),
            trailing: Radio(
              value: "Net Banking",
              activeColor: gMainColor,
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value as String;
                });
              },
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 2.h),
            height: 1,
            color: Colors.grey.withOpacity(0.3),
          ),
          ListTile(
            leading: SizedBox(
              height: 5.h,
              child: const Image(
                image: AssetImage("assets/images/splash_screen/google-pay.png"),
              ),
            ),
            title: Text(
              'UPI',
              style: TextStyle(
                  fontFamily: "GothamBook", color: gTextColor, fontSize: 11.sp),
            ),
            trailing: Radio(
              value: "UPI",
              activeColor: gMainColor,
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = value as String;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  buildDetails() {
    return SizedBox(
      height: 18.h,
      width: double.maxFinite,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            fit: StackFit.expand,
            children: [
              const Image(
                image: AssetImage("assets/images/splash_screen/Group 2785.png"),
                fit: BoxFit.fill,
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "All inclusive. No Additional Costs",
                      style: TextStyle(
                          fontFamily: "GothamMedium",
                          color: kWhiteColor,
                          fontSize: 11.sp),
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      "Rs.4999",
                      style: TextStyle(
                          fontFamily: "GothamMedium",
                          color: kWhiteColor,
                          fontSize: 13.sp),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
