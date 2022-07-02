import 'package:flutter/material.dart';
import 'package:gut_wellness_app/Introduction%20Screens/dashboard_page.dart';
import 'package:gut_wellness_app/widgets/constants.dart';
import 'package:gut_wellness_app/widgets/widgets.dart';
import 'package:sizer/sizer.dart';

class ReportsUploadedScreen extends StatelessWidget {
  const ReportsUploadedScreen({Key? key}) : super(key: key);

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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: buildAppBar(() {
                    Navigator.pop(context);
                  }),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 4.h),
                  child: const Image(
                    image: AssetImage(
                        "assets/images/splash_screen/undraw_setup_wizard_re_nday (2).png"),
                  ),
                ),
                Text(
                  "Reports Uploaded",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "GothamRoundedBold_21016",
                      color: gPrimaryColor,
                      fontSize: 15.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Please allow up to 12 hours for your doctors to analyze your case and unlock your next step",
                  textAlign: TextAlign.center,
                  style: TextStyle(height: 1.5,
                      fontFamily: "GothamMedium",
                      color: gTextColor,
                      fontSize: 12.sp),
                ),
                SizedBox(
                  height: 10.h,
                ),
                 Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) =>
                                const DashboardPage()),
                      );
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 1.h, horizontal: 15.w),
                      decoration: BoxDecoration(
                        color: gSecondaryColor,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: gMainColor, width: 1),
                      ),
                      child: Text(
                        'Home',
                        style: TextStyle(
                          fontFamily: "GothamRoundedBold_21016",
                          color: gWhiteColor,
                          fontSize: 12.sp,
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
