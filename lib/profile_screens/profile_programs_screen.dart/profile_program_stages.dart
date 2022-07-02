import 'package:flutter/material.dart';
import 'package:gut_wellness_app/Introduction%20Screens/introduction_screen.dart';
import 'package:gut_wellness_app/Screens/program_stages_screen.dart';
import 'package:gut_wellness_app/widgets/constants.dart';
import 'package:gut_wellness_app/widgets/widgets.dart';
import 'package:sizer/sizer.dart';

class ProfileProgramStages extends StatefulWidget {
  const ProfileProgramStages({Key? key}) : super(key: key);

  @override
  State<ProfileProgramStages> createState() => _ProfileProgramStagesState();
}

class _ProfileProgramStagesState extends State<ProfileProgramStages> {
  String isSelected = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kSecondaryColor,
        body: Padding(
          padding:
              EdgeInsets.only(left: 4.w, right: 4.w, top: 3.h, bottom: 5.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildAppBar(() {
                    Navigator.pop(context);
                  }),
                  Text(
                    "Program Stages",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "PoppinsBold",
                        color: kTextColor,
                        fontSize: 12.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              buildPrograms(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const IntroductionScreen(),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 3.w),
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.add_circle_outline,
                        color: kWhiteColor,
                      ),
                      SizedBox(width: 2.w),
                      Text(
                        "Add Program",
                        style: TextStyle(
                          fontFamily: "PoppinsRegular",
                          color: kWhiteColor,
                          fontSize: 13.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Center(
              //   child: RaisedButton(
              //       color: kPrimaryColor,
              //       shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(10.0)),
              //       padding:
              //           EdgeInsets.symmetric(vertical: 1.h, horizontal: 3.w),
              //       child: Row(
              //         children: [
              //           const Icon(
              //             Icons.add_circle_outline,
              //             color: kWhiteColor,
              //           ),
              //           SizedBox(width: 2.w),
              //           Text(
              //             "Add Program",
              //             style: TextStyle(
              //               fontFamily: "PoppinsRegular",
              //               color: kWhiteColor,
              //               fontSize: 13.sp,
              //             ),
              //           ),
              //         ],
              //       ),
              //       onPressed: () {
              //         // Navigator.of(context).push(
              //         //   MaterialPageRoute(
              //         //     builder: (context) => const GutDetoxProgramScreen(),
              //         //   ),
              //         // );
              //       }),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  buildPrograms() {
    return Expanded(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            buildProgramStages("1", "01 April - 12 April 22022"),
            buildProgramStages("2", "21 April - 02 May 22022"),
          ],
        ),
      ),
    );
  }

  void changedIndex(String index) {
    setState(() {
      isSelected = index;
    });
  }

  Widget buildProgramStages(String title, String subTitle) {
    return GestureDetector(
      onTap: () {
        changedIndex(title);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 1.h),
        margin: EdgeInsets.symmetric(vertical: 1.5.h),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(20),
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
                    blurRadius: 25,
                    offset: const Offset(2, 10),
                  ),
                ],
        ),
        child: ListTile(
          leading: SizedBox(
            height: 20.h,
            width: 20.w,
            child: const Image(
              image: AssetImage(
                  "assets/images/splash_screen/calorie-counter-health-diet-app-concept.png"),
              fit: BoxFit.contain,
            ),
          ),
          title: Text(
            "Program - $title",
            style: TextStyle(
              fontFamily: "PoppinsMedium",
              color: kPrimaryColor,
              fontSize: 10.sp,
            ),
          ),
          subtitle: Text(
            subTitle,
            style: TextStyle(
              fontFamily: "PoppinsRegular",
              color: Colors.grey,
              fontSize: 9.sp,
            ),
          ),
          trailing: (isSelected == title)
              ? InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ProgramStagesScreen(),
                      ),
                    );
                  },
                  child: const Icon(
                    Icons.chevron_right,
                    color: kTextColor,
                  ),
                )
              : Container(
                  width: 2.w,
                ),
        ),
      ),
    );
  }
}
