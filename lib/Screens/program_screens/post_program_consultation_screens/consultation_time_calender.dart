import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gut_wellness_app/Screens/program_screens/post_program_consultation_screens/consultation_confirmed.dart';
import 'package:sizer/sizer.dart';

import 'package:gut_wellness_app/widgets/constants.dart';
import 'package:gut_wellness_app/widgets/widgets.dart';
import 'package:intl/intl.dart';

class ConsultationTimeCalender extends StatefulWidget {
  const ConsultationTimeCalender({ Key? key }) : super(key: key);

  @override
  State<ConsultationTimeCalender> createState() => _ConsultationTimeCalenderState();
}

class _ConsultationTimeCalenderState extends State<ConsultationTimeCalender> {
  DatePickerController dateController = DatePickerController();
  String isSelected = "";

  List<String> list = ["09:00", "11:00", "02:00", "04:00"];

  DateTime selectedValue = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kSecondaryColor,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding:
                EdgeInsets.only(left: 4.w, right: 4.w, top: 3.h, bottom: 5.h),
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
                  height: 4.h,
                ),
                Container(
                  width: double.maxFinite,
                  height: 17.h,
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 20,
                        ),
                      ]),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 5.h,
                        left: 5.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dr.Swarnalatha",
                              style: TextStyle(
                                  fontFamily: "PoppinsSemiBold",
                                  color: kWhiteColor,
                                  fontSize: 15.sp),
                            ),
                            Text(
                              "Ayurveda Specialist",
                              style: TextStyle(
                                  fontFamily: "PoppinsMedium",
                                  color: kWhiteColor,
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
                      fontFamily: "PoppinsSemiBold",
                      color: kTextColor,
                      fontSize: 12.sp),
                ),
                SizedBox(
                  height: 1.h,
                ),
                buildChooseDay(),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Choose Time",
                  style: TextStyle(
                      fontFamily: "PoppinsSemiBold",
                      color: kTextColor,
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
                  height: 10.h,
                ),
                Center(
                  child: CommonButton.sendButton(() {
                    buildConfirm();
                  }, "Confirm"),
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
      width: 27.w,
      height: 12.h,
      padding: EdgeInsets.only(top: 2.h, left: 3.w, right: 3.w),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(image),
          SizedBox(height: 1.h),
          Text(
            title,
            style: TextStyle(
                fontFamily: "PoppinsRegular",
                color: kTextColor,
                fontSize: 10.sp),
          ),
          Text(
            subTitle,
            style: TextStyle(
                fontFamily: "PoppinsSemiBold",
                color: kTextColor,
                fontSize: 10.sp),
          ),
        ],
      ),
    );
  }

  buildChooseDay() {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: DatePicker(
        DateTime.now(),
        controller: dateController,
        height: 10.h,
        width: 14.w,
        monthTextStyle: TextStyle(fontFamily: "PoppinsRegular", fontSize: 0.sp),
        dateTextStyle: TextStyle(fontFamily: "PoppinsBold", fontSize: 12.sp),
        dayTextStyle: TextStyle(fontFamily: "PoppinsRegular", fontSize: 8.sp),
        initialSelectedDate: DateTime.now(),
        selectionColor: kPrimaryColor,
        selectedTextColor: kWhiteColor,
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
    return ElevatedButton(
      onPressed: () {
        changedIndex(txt);
      },
      style: ElevatedButton.styleFrom(
        primary: isSelected == txt ? kPrimaryColor : kWhiteColor,
        padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 5.w),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
      child: Text(
        txt,
        style: TextStyle(
          fontSize: 10.sp,
          fontFamily: "PoppinsRegular",
          color: isSelected == txt ? kWhiteColor : kPrimaryColor,
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
          builder: (context) => ConsultationConfirmed(
            bookingDate: formatted,
            bookingTime: isSelected,
          ),
        ),
      );
    }
  }
}
