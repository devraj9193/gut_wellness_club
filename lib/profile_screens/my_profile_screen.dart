import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gut_wellness_app/Screens/program_screens/post_program_protocol_screens/post_program_protocol.dart';
import 'package:gut_wellness_app/profile_screens/faq_screen.dart';
import 'package:gut_wellness_app/profile_screens/profile_programs_screen.dart/profile_program_stages.dart';
import 'package:gut_wellness_app/profile_screens/terms_conditions_screen.dart';
import 'package:gut_wellness_app/profile_screens/my_profile_Details.dart';
import 'package:gut_wellness_app/splash_screen.dart';
import 'package:gut_wellness_app/widgets/constants.dart';
import 'package:gut_wellness_app/widgets/widgets.dart';
import 'package:sizer/sizer.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
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
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  "Profile",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "PoppinsSemiBold",
                      color: kTextColor,
                      fontSize: 12.sp),
                ),
                SizedBox(
                  height: 3.h,
                ),
                profileTile("assets/images/Group 929.svg", "My Profile", () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MyProfileDetails(),
                    ),
                  );
                }),
                Container(
                  height: 1,
                  color: Colors.grey,
                ),
                profileTile("assets/images/Group 929.svg", "Programs", () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ProfileProgramStages(),
                    ),
                  );
                }),
                Container(
                  height: 1,
                  color: Colors.grey,
                ),
                profileTile("assets/images/Group 929.svg", "FAQ", () {
                  buildFAQ();
                }),
                Container(
                  height: 1,
                  color: Colors.grey,
                ),
                profileTile("assets/images/Group 929.svg", "Terms & Conditions",
                    () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const TermsConditionsScreen(),
                    ),
                  );
                }),
                Container(
                  height: 1,
                  color: Colors.grey,
                ),
                profileTile("assets/images/Group 929.svg", "Refers", () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const PostProgramProtocol(),
                    ),
                  );
                }),
                Container(
                  height: 1,
                  color: Colors.grey,
                ),
                profileTile("assets/images/Group 929.svg", "Logout", () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SplashScreen(),
                    ),
                  );
                }),
                Container(
                  height: 1,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  profileTile(String image, String title, func) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 4.w),
      child: InkWell(
        onTap: func,
        child: Row(
          children: [
            SvgPicture.asset(image),
            SizedBox(
              width: 5.w,
            ),
            Text(
              title,
              style: TextStyle(
                color: kTextColor,
                fontFamily: 'PoppinsMedium',
                fontSize: 12.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildFAQ() {
    Size size = MediaQuery.of(context).size;
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => Container(
        padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
        decoration: const BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        height: size.height * 100,
        width: double.infinity,
        child: const FAQScreen(),
      ),
    );
  }
}
