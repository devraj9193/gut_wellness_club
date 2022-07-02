import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import 'package:gut_wellness_app/widgets/constants.dart';
import 'package:gut_wellness_app/widgets/widgets.dart';
import 'package:intl/intl.dart';

import 'naturopathy_slots_details_screen.dart';

class NaturopathyCalenderTimeScreen extends StatefulWidget {
  const NaturopathyCalenderTimeScreen({Key? key}) : super(key: key);

  @override
  State<NaturopathyCalenderTimeScreen> createState() =>
      _NaturopathyCalenderTimeScreenState();
}

class _NaturopathyCalenderTimeScreenState
    extends State<NaturopathyCalenderTimeScreen> {
  DatePickerController dateController = DatePickerController();
  String isSelected = "";

  List<String> list = ["09:00", "11:00", "02:00", "04:00"];

  DateTime selectedValue = DateTime.now();

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildAppBar(() {
                      Navigator.pop(context);
                    }),
                    Text(
                      "Naturopathy Consultation",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "GothamRoundedBold_21016",
                          color: gPrimaryColor,
                          fontSize: 11.sp),
                    ),
                  ],
                ),
                Container(
                  width: double.maxFinite,
                  height: 17.h,
                  margin: EdgeInsets.symmetric(vertical: 3.h),
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(20),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.grey.withOpacity(0.5),
                    //     blurRadius: 20,
                    //   ),
                    // ]
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 5.h,
                        left: 5.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dr.Vinutha Rao",
                              style: TextStyle(
                                  fontFamily: "GothamRoundedBold_21016",
                                  color: gWhiteColor,
                                  fontSize: 15.sp),
                            ), SizedBox(height: 1.h),
                            Text(
                              "Naturopathy Specialist",
                              style: TextStyle(
                                  fontFamily: "GothamBook",
                                  color: gWhiteColor,
                                  fontSize: 10.sp),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 5.w,
                        child: SizedBox(
                          height: 14.h,
                          child: const Image(
                            image: AssetImage(
                                "assets/images/splash_screen/freepik--Character--inject-4.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildDoctorDetails(
                        "Patient", "10K", "assets/images/Patient.svg"),
                    buildDoctorDetails("Experience", "12 Years",
                        "assets/images/Experences.svg"),
                    buildDoctorDetails(
                        "Rating", "4.5", "assets/images/star.svg"),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Choose Day",
                  style: TextStyle(
                      fontFamily: "GothamRoundedBold_21016",
                      color: gPrimaryColor,
                      fontSize: 12.sp),
                ),
                buildChooseDay(),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Choose Time",
                  style: TextStyle(
                      fontFamily: "GothamRoundedBold_21016",
                      color: gPrimaryColor,
                      fontSize: 12.sp),
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildChooseTime(list[0]),
                    buildChooseTime(list[1]),
                    buildChooseTime(list[2]),
                    buildChooseTime(list[3]),
                  ],
                ),
                SizedBox(
                  height: 6.h,
                ),
                isSelected.isEmpty
                    ? Center(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 1.h, horizontal: 10.w),
                          decoration: BoxDecoration(
                            color: gMainColor,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: gMainColor, width: 1),
                          ),
                          child: Text(
                            'Confirm',
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
                            buildConfirm();
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 1.h, horizontal: 10.w),
                            decoration: BoxDecoration(
                              color: gPrimaryColor,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: gMainColor, width: 1),
                            ),
                            child: Text(
                              'Confirm',
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

  buildDoctorDetails(String title, String subTitle, String image) {
    return Container(
      width: 25.w,
      height: 12.h,
      padding: EdgeInsets.only(top: 2.h, left: 3.w, right: 3.w),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: gPrimaryColor, width: 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(image),
          SizedBox(height: 1.5.h),
          Text(
            title,
            style: TextStyle(
                fontFamily: "GothamBook", color: gMainColor, fontSize: 9.sp),
          ),
          SizedBox(height: 1.h),
          Text(
            subTitle,
            style: TextStyle(
                fontFamily: "GothamMedium", color: gMainColor, fontSize: 9.sp),
          ),
        ],
      ),
    );
  }

  buildChooseDay() {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: EdgeInsets.symmetric(vertical: 2.h),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: gMainColor, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 1,
          ),
        ],
      ),
      child: DatePicker(
        DateTime.now(),
        controller: dateController,
        height: 10.h,
        width: 14.w,
        monthTextStyle: TextStyle(fontSize: 0.sp),
        dateTextStyle: TextStyle(
            fontFamily: "GothamRoundedBold_21016",
            fontSize: 13.sp,
            color: gPrimaryColor),
        dayTextStyle: TextStyle(
            fontFamily: "GothamBook", fontSize: 8.sp, color: gPrimaryColor),
        initialSelectedDate: DateTime.now(),
        selectionColor: gPrimaryColor,
        selectedTextColor: gMainColor,
        onDateChange: (date) {
          setState(() {
            selectedValue = date;
          });
        },
      ),
    );
  }

  void changedIndex(String index) {
    setState(() {
      isSelected = index;
    });
  }

  Widget buildChooseTime(String txt) {
    return GestureDetector(
      onTap: () {
        changedIndex(txt);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
        decoration: BoxDecoration(
          color: (isSelected != txt) ? gWhiteColor : gPrimaryColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: gMainColor, width: 1),
          boxShadow: (isSelected != txt)
              ? [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 1,
                  ),
                ]
              : [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 20,
                    offset: const Offset(2, 10),
                  ),
                ],
        ),
        child: Text(
          txt,
          style: TextStyle(
            fontSize: 10.sp,
            fontFamily: "GothamBook",
            color: isSelected == txt ? gMainColor : gTextColor,
          ),
        ),
      ),
    );
  }

  void buildConfirm() {
    DateTime now = DateTime.parse('$selectedValue');
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    final String formatted = formatter.format(now);
    if (isSelected.isEmpty) {
      buildSnackBar("Failed", "Please Choose Time");
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => NaturopathySlotsDetailsScreen(
            bookingDate: formatted,
            bookingTime: isSelected,
          ),
        ),
      );
    }
  }
}
