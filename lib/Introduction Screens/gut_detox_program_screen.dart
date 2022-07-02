import 'package:flutter/material.dart';
import 'package:gut_wellness_app/Introduction%20Screens/dashboard_page.dart';
import 'package:gut_wellness_app/widgets/constants.dart';
import 'package:sizer/sizer.dart';

class GutDetoxProgramScreen extends StatelessWidget {
  const GutDetoxProgramScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.maxFinite,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/splash_screen/francesca-hotchin-p5EiqkBYIEE-unsplash.png",
                    ),
                    fit: BoxFit.cover),
                // borderRadius: BorderRadius.only(
                //   bottomLeft: Radius.circular(40),
                //   bottomRight: Radius.circular(40),
                // ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 10.h,
                    left: 5.w,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: gMainColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome to your Gut Detox Program",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          height: 1.5,
                          fontFamily: "GothamRoundedBold_21016",
                          color: gPrimaryColor,
                          fontSize: 16.sp),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "Few Points To Keep in Mind Before We Start",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          height: 1.5,
                          fontFamily: "GothamRoundedBold_21016",
                          color: gMainColor,
                          fontSize: 10.sp),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "1. Detox Must Not Be Interrupted.",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          height: 1.5,
                          fontFamily: "GothamBook",
                          color: gTextColor,
                          fontSize: 10.sp),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "2. Lorem Ipsum Is Simply Dummy Text Of The Printing And Typesetting Industry.",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          height: 1.5,
                          fontFamily: "GothamBook",
                          color: gTextColor,
                          fontSize: 10.sp),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "3. It Is A Long Established Fact That A Reader Will be Distracted By The Readable Content Of A Page When Looking At Its Layout.",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          height: 1.5,
                          fontFamily: "GothamBook",
                          color: gTextColor,
                          fontSize: 10.sp),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const DashboardPage(),
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
                            "Start",
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
        ],
      ),
    );
  }
}
