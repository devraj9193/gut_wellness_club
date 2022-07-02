import 'package:flutter/material.dart';
import 'package:gut_wellness_app/widgets/constants.dart';
import 'package:gut_wellness_app/widgets/widgets.dart';
import 'package:sizer/sizer.dart';

import 'choose_your_problem_screen.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:
              EdgeInsets.only(left: 4.w, right: 4.w, top: 1.h, bottom: 5.h),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildAppBar(() {}),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Hello ,",
                  style: TextStyle(
                      fontFamily: "MontserratExtraBold",
                      color: gPrimaryColor,
                      fontSize: 13.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "We are an Ayurveda & Naturopathy based complete Gut Detox & Healing Program.",
                  style: TextStyle(
                      height: 1.5,
                      fontFamily: "PhilosopherRegular",
                      color: gTextColor,
                      fontSize: 12.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "We completely cleanse your gut right from your tongue all the way to your anus & subsequently heal it.",
                  style: TextStyle(
                      height: 1.5,
                      fontFamily: "PhilosopherRegular",
                      color: gTextColor,
                      fontSize: 12.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "We do NOT use any sort of medication or supplements in this program,everything is done using 100% natural cooked food & yoga over a period of 10-12 days.",
                  style: TextStyle(
                      height: 1.5,
                      fontFamily: "PhilosopherRegular",
                      color: gTextColor,
                      fontSize: 12.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "All customers who are accepted into the program see on average 80-90%",
                  style: TextStyle(
                      height: 1.5,
                      fontFamily: "PhilosopherRegular",
                      color: gTextColor,
                      fontSize: 12.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Improvement in their condition if not a 100% reversal.",
                  style: TextStyle(
                      fontFamily: "PhilosopherRegular",
                      color: gTextColor,
                      fontSize: 12.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "*",
                      style: TextStyle(
                          height: 1.5,
                          fontFamily: "PhilosopherRegular",
                          color: gPrimaryColor,
                          fontSize: 12.sp),
                    ),
                    Expanded(
                      child: Text(
                        "Your case will be evaluated by our senior Ayurveda doctors for acceptance",
                        textAlign: TextAlign.start,
                        maxLines: 3,
                        style: TextStyle(
                            height: 1.5,
                            fontFamily: "PhilosopherRegular",
                            color: gTextColor,
                            fontSize: 12.sp),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 7.h,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ChooseYourProblemScreen(),
                        ),
                      );
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 1.h, horizontal: 25.w),
                      decoration: BoxDecoration(
                        color: gPrimaryColor,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: gMainColor, width: 1),
                      ),
                      child: Text(
                        'NEXT',
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
}
