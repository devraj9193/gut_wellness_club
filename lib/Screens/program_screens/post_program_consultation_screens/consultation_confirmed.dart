import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gut_wellness_app/Screens/program_screens/post_program_consultation_screens/consultation_completed.dart';
import 'package:gut_wellness_app/Screens/program_screens/post_program_consultation_screens/consultation_time_calender.dart';
import 'package:gut_wellness_app/widgets/widgets.dart';
import 'package:sizer/sizer.dart';

import 'package:gut_wellness_app/widgets/constants.dart';

class ConsultationConfirmed extends StatefulWidget {
  final String bookingDate;
  final String bookingTime;
  const ConsultationConfirmed(
      {Key? key, required this.bookingDate, required this.bookingTime})
      : super(key: key);

  @override
  State<ConsultationConfirmed> createState() => _ConsultationConfirmedState();
}

class _ConsultationConfirmedState extends State<ConsultationConfirmed> {
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Your Slot @ ",
                                      style: TextStyle(
                                          fontFamily: "PoppinsMedium",
                                          color: kSecondaryColor,
                                          fontSize: 12.sp),
                                    ),
                                    Text(
                                      widget.bookingTime.toString(),
                                      style: TextStyle(
                                          fontFamily: "PoppinsBold",
                                          color: kWhiteColor,
                                          fontSize: 12.sp),
                                    ),
                                    Text(
                                      " on the",
                                      style: TextStyle(
                                          fontFamily: "PoppinsMedium",
                                          color: kSecondaryColor,
                                          fontSize: 12.sp),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      widget.bookingDate.toString(),
                                      style: TextStyle(
                                          fontFamily: "PoppinsBold",
                                          color: kWhiteColor,
                                          fontSize: 12.sp),
                                    ),
                                    Text(
                                      ", Has Been Confirmed",
                                      style: TextStyle(
                                          fontFamily: "PoppinsMedium",
                                          color: kSecondaryColor,
                                          fontSize: 12.sp),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Text(
                                  "Note:",
                                  style: TextStyle(
                                      fontFamily: "PoppinsBold",
                                      color: kWhiteColor,
                                      fontSize: 12.sp),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  "Please Keep Your Medical Reports \nFrom The Past Handy",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: "PoppinsMedium",
                                      color: kSecondaryColor,
                                      fontSize: 12.sp),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
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
                                        "Join",
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
                                                ConsultationCompleted(
                                              bookingDate: widget.bookingDate,
                                              bookingTime: widget.bookingTime,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                    SizedBox(width: 5.w),
                                    RaisedButton(
                                      color: kWhiteColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      padding: EdgeInsets.symmetric(
                                          vertical: 0.5.h, horizontal: 3.w),
                                      child: Text(
                                        "Reschedule",
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
                                                  const ConsultationTimeCalender()),
                                        );
                                      },
                                    ),
                                  ],
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
                                  "Lorem Ipsum Dialmd",
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
