import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gut_wellness_app/Screens/evalution_form/personal_details_screen.dart';
import 'package:gut_wellness_app/widgets/constants.dart';
import 'package:gut_wellness_app/widgets/widgets.dart';
import 'package:sizer/sizer.dart';

class EvaluationFormScreen extends StatefulWidget {
  const EvaluationFormScreen({Key? key}) : super(key: key);

  @override
  State<EvaluationFormScreen> createState() => _EvaluationFormScreenState();
}

class _EvaluationFormScreenState extends State<EvaluationFormScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding:
                EdgeInsets.only(left: 4.w, right: 4.w, top: 3.h, bottom: 5.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildAppBar(() {
                  Navigator.pop(context);
                }),
                const Center(
                  child: Image(
                    image: AssetImage("assets/images/Evalutation.png"),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Gut Wellness Club Evaluation Form",
                  style: TextStyle(
                      fontFamily: "PoppinsBold",
                      color: kTextColor,
                      fontSize: 12.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Hello There,",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "PoppinsBold",
                      color: kTextColor,
                      fontSize: 11.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Welcome To The Start Of Your Gut Wellness Journey.",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: "PoppinsBold",
                      color: kTextColor,
                      fontSize: 10.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "This Form Will Be Evaluated By Your Senior Ayurveda & Naturopathy Doctors To-",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: "PoppinsSemiBold",
                      color: kTextColor,
                      fontSize: 10.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "1) Determine If This Program Can Heal You & Therefore Determine If We Can Proceed With Your Case Or Not.",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: "PoppinsRegular",
                      color: kTextColor,
                      fontSize: 10.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "2) If Accepted What Sort Of Customization is Required To Heal Your Condition(s) Please Fill This To The Best Of Your Knowledge As This is Critical. Time To Fill 10-15Mins",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: "PoppinsRegular",
                      color: kTextColor,
                      fontSize: 10.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Your Doctors Might Personally Get In Touch With You If More Information Is Needed.",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: "PoppinsRegular",
                      color: kTextColor,
                      fontSize: 10.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "This Form Will Be Confidential & Only Visible To Your Doctors & Few Executives Responsible For Supporting Your Doctors.",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: "PoppinsRegular",
                      color: kTextColor,
                      fontSize: 10.sp),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Center(
                  child: CommonButton.submitButton(() {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const PersonalDetailsScreen(),
                      ),
                    );
                  }, "Next"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
