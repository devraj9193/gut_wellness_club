import 'package:flutter/material.dart';
import 'package:gut_wellness_app/widgets/constants.dart';
import 'package:gut_wellness_app/widgets/widgets.dart';
import 'package:sizer/sizer.dart';

class CommunityExplore extends StatefulWidget {
  const CommunityExplore({Key? key}) : super(key: key);

  @override
  State<CommunityExplore> createState() => _CommunityExploreState();
}

class _CommunityExploreState extends State<CommunityExplore> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF5F6FA),
        body: Padding(
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
                    "Community",
                    style: TextStyle(
                      fontFamily: "PoppinsBold",
                      fontSize: 12.sp,
                      color: kTextColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Explore",
                    style: TextStyle(
                      fontFamily: "PoppinsBold",
                      fontSize: 15.sp,
                      color: kTextColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
