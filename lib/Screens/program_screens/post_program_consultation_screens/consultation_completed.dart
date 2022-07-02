import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gut_wellness_app/Screens/program_screens/we_are_gut_wellness_screen.dart';
import 'package:gut_wellness_app/Screens/upload_reports_screen.dart';
import 'package:gut_wellness_app/widgets/widgets.dart';
import 'package:sizer/sizer.dart';

import 'package:gut_wellness_app/widgets/constants.dart';

class ConsultationCompleted extends StatefulWidget {
  final String bookingDate;
  final String bookingTime;
  const ConsultationCompleted(
      {Key? key, required this.bookingDate, required this.bookingTime})
      : super(key: key);

  @override
  State<ConsultationCompleted> createState() => _ConsultationCompletedState();
}

class _ConsultationCompletedState extends State<ConsultationCompleted> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: 4.w, right: 4.w, top: 3.h, bottom: 2.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildAppBar(() {
                        Navigator.pop(context);
                      }),
                      Text(
                        "Ayurveda Consultation",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "PoppinsSemiBold",
                            color: kTextColor,
                            fontSize: 12.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  SizedBox(
                    height: 15.h,
                    child: const Center(
                      child: Image(
                        image: AssetImage("assets/images/Group 2523.png"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Center(
                    child: Text(
                      "Dr.Swarnalatha",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "PoppinsBold",
                          color: kPrimaryColor,
                          fontSize: 15.sp),
                    ),
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  Center(
                    child: Text(
                      "Ayurveda Specialist",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "PoppinsRegular",
                          color: kPrimaryColor,
                          fontSize: 10.sp),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                height: double.maxFinite,
                width: double.maxFinite,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Stack(
                      fit: StackFit.expand,
                      children: [
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          top: 5.h,
                          child: Container(
                            color: kPrimaryColor,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Your Consultation as Completed on",
                                  style: TextStyle(
                                      fontFamily: "PoppinsMedium",
                                      color: kSecondaryColor,
                                      fontSize: 12.sp),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      widget.bookingDate,
                                      style: TextStyle(
                                          fontFamily: "PoppinsBold",
                                          color: kWhiteColor,
                                          fontSize: 12.sp),
                                    ),
                                    Text(
                                      " @ ",
                                      style: TextStyle(
                                          fontFamily: "PoppinsMedium",
                                          color: kSecondaryColor,
                                          fontSize: 12.sp),
                                    ),
                                    Text(
                                      widget.bookingTime,
                                      style: TextStyle(
                                          fontFamily: "PoppinsBold",
                                          color: kWhiteColor,
                                          fontSize: 12.sp),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: kWhiteColor,
                                    onSurface: kSecondaryColor,
                                    padding: EdgeInsets.symmetric(
                                        vertical: 0.5.h, horizontal: 6.w),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                  ),
                                  child: Text(
                                    "Home",
                                    style: TextStyle(
                                      fontFamily: "PoppinsRegular",
                                      color: kPrimaryColor,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const WeAreGutWellnessScreen()),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10.w,
                          right: 10.w,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 3.w, vertical: 0.5.h),
                            decoration: BoxDecoration(
                              color: kSecondaryColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                    "assets/images/splash_screen/Calendar.svg"),
                                SizedBox(width: 5.w),
                                Text(
                                  "Consultation Completed",
                                  style: TextStyle(
                                      fontFamily: "PoppinsRegular",
                                      color: kTextColor,
                                      fontSize: 10.sp),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
