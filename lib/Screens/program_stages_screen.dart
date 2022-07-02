import 'package:flutter/material.dart';
import 'package:gut_wellness_app/Screens/ayurveda_screens/ayurveda_calender_time_screen.dart';
import 'package:gut_wellness_app/Screens/cook_kit_shipping_screens/cook_kit_tracking.dart';
import 'package:gut_wellness_app/Screens/evalution_form/evaluation_form_screen.dart';
import 'package:gut_wellness_app/Screens/program_screens/program_plans_screen.dart';
import 'package:gut_wellness_app/widgets/constants.dart';
import 'package:gut_wellness_app/widgets/widgets.dart';
import 'package:sizer/sizer.dart';
import 'naturopathy_screens/naturopathy_calender_time_screen.dart';

class ProgramStagesScreen extends StatefulWidget {
  const ProgramStagesScreen({Key? key}) : super(key: key);

  @override
  State<ProgramStagesScreen> createState() => _ProgramStagesScreenState();
}

class _ProgramStagesScreenState extends State<ProgramStagesScreen> {
  String isSelected = "";

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
                      "Program Journey",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "GothamRoundedBold_21016",
                          color: gPrimaryColor,
                          fontSize: 12.sp),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                buildProgramStages(
                    "assets/images/splash_screen/front-view-plants-bowl.png",
                    "Ayurveda Consultation", () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const AyurvedaCalenderTimeScreen(),
                    ),
                  );
                }),
                buildProgramStages(
                    "assets/images/splash_screen/assessment-strategy-evaluation-prioritize-icons.png",
                    "Evaluation form", () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const EvaluationFormScreen(),
                    ),
                  );
                }),
                buildProgramStages(
                    'assets/images/splash_screen/flat-lay-natural-medicinal-spices-herbs-1.png',
                    "Naturopathy Consultation", () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          const NaturopathyCalenderTimeScreen(),
                    ),
                  );
                }),
                buildProgramStages("assets/images/splash_screen/G.png",
                    "Ready to cook Kit Shipping", () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const CookKitTracking(),
                    ),
                  );
                }),
                buildProgramStages(
                    "assets/images/splash_screen/calorie-counter-health-diet-app-concept.png",
                    "Program", () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ProgramPlansScreen(),
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void changedIndex(String index) {
    setState(() {
      isSelected = index;
    });
  }

  Widget buildProgramStages(String image, String title, func) {
    return GestureDetector(
      onTap: () {
        changedIndex(title);
      },
      child: Container(
        padding:
            EdgeInsets.only(left: 2.w, top: 0.5.h, bottom: 0.5.h, right: 5.w),
        margin: EdgeInsets.symmetric(vertical: 1.5.h),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: gMainColor.withOpacity(0.3), width: 1),
          boxShadow: (isSelected != title)
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
        child: Row(
          children: [
            (isSelected == title)
                ? Image(
                    height: 9.h,
                    image: AssetImage(image),
                  )
                : ColorFiltered(
                    colorFilter:
                        const ColorFilter.mode(Colors.grey, BlendMode.darken),
                    child: Image(
                      height: 9.h,
                      image: AssetImage(image),
                    ),
                  ),
            SizedBox(width: 5.w),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: "GothamMedium",
                  color:
                      (isSelected == title) ? gMainColor : gSecondaryColor,
                  fontSize: 10.sp,
                ),
              ),
            ),
            (isSelected == title)
                ? InkWell(
                    onTap: func,
                    child: Image(
                      height: 3.h,
                      image: const AssetImage(
                          "assets/images/splash_screen/noun-arrow-1018952.png"),
                    ),
                  )
                : Container(
                    width: 2.w,
                  ),
          ],
        ),
      ),
    );
  }
}
