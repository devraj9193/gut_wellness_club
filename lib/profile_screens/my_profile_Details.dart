import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gut_wellness_app/widgets/widgets.dart';
import 'package:sizer/sizer.dart';

import 'package:gut_wellness_app/Register%20Screens/register_screen.dart';
import 'package:gut_wellness_app/widgets/constants.dart';

class MyProfileDetails extends StatelessWidget {
  const MyProfileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     buildAppBar(() {
                      Navigator.pop(context);
                    }),
                    Text(
                      "My Profile",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "PoppinsBold",
                          color: kTextColor,
                          fontSize: 12.sp),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.62,
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Stack(
                        fit: StackFit.expand,
                        children: [
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            top: 11.h,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 3.w),
                              margin: EdgeInsets.symmetric(horizontal: 2.w),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    blurRadius: 20,
                                    offset: const Offset(2, 10),
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const RegisterScreen(),
                                        ),
                                      );
                                    },
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(top: 2.h, right: 3.w),
                                      child: Align(
                                        alignment: Alignment.topRight,
                                        child: SvgPicture.asset(
                                          "assets/images/Icon feather-edit.svg",
                                          color: Colors.grey,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  profileTile("Name: ", "Gut-Wellness Club"),
                                  Container(
                                    height: 1,
                                    color: Colors.grey,
                                  ),
                                  profileTile("Age: ", "34"),
                                  Container(
                                    height: 1,
                                    color: Colors.grey,
                                  ),
                                  profileTile("Gender: ", "male"),
                                  Container(
                                    height: 1,
                                    color: Colors.grey,
                                  ),
                                  profileTile(
                                      "Email: ", "Gutwellness@nomail.com"),
                                  Container(
                                    height: 1,
                                    color: Colors.grey,
                                  ),
                                  profileTile("Mobile Number: ", "9940304777"),
                                  Container(
                                    height: 1,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 5.h,
                            left: 0,
                            right: 0,
                            child: Center(
                              child: CircleAvatar(
                                radius: 6.h,
                                backgroundColor: Colors.black45,
                                backgroundImage: const AssetImage(
                                    "assets/images/Group 2543.png"),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  profileTile(String title, String subTitle) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 3.w),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              color: kTextColor,
              fontFamily: 'PoppinsRegular',
              fontSize: 10.sp,
            ),
          ),
          Text(
            subTitle,
            style: TextStyle(
              color: kTextColor,
              fontFamily: 'PoppinsSemiBold',
              fontSize: 10.sp,
            ),
          ),
        ],
      ),
    );
  }
}
