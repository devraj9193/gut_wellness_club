import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gut_wellness_app/Register%20Screens/register_screen.dart';
import 'package:gut_wellness_app/widgets/constants.dart';
import 'package:gut_wellness_app/widgets/widgets.dart';
import 'package:sizer/sizer.dart';

class LoremLpsumDiandsScreen extends StatefulWidget {
  const LoremLpsumDiandsScreen({Key? key}) : super(key: key);

  @override
  State<LoremLpsumDiandsScreen> createState() => _LoremLpsumDiandsScreenState();
}

class _LoremLpsumDiandsScreenState extends State<LoremLpsumDiandsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 4.w,right: 4.w,top: 3.h,bottom: 5.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset("assets/images/splash_screen/Inside Logo.svg"),
              SizedBox(
                height: 4.h,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lorem Ipsum Diands",
                      style: TextStyle(
                          fontFamily: "PoppinsSemiBold",
                          color: kTextColor,
                          fontSize: 13.sp),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      "Lorem lpsum is simply dummy text of the printing and typesetting industry.",
                      style: TextStyle(
                          fontFamily: "PoppinsMedium",
                          color: kTextColor,
                          fontSize: 11.sp),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    const Image(
                      image: AssetImage("assets/images/Video Player.png"),
                    ),
                  ],
                ),
              ),
              Center(
                child: CommonButton.sendButton(() {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const RegisterScreen(),
                    ),
                  );
                }, "Register"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
