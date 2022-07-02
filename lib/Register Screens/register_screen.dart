import 'package:flutter/material.dart';
import 'package:gut_wellness_app/widgets/constants.dart';
import 'package:gut_wellness_app/widgets/widgets.dart';
import 'package:sizer/sizer.dart';

import 'verification_code_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding:
                EdgeInsets.only(left: 4.w, right: 4.w, top: 1.h, bottom: 5.h),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildAppBar(() {
                    Navigator.pop(context);
                  }),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    "Registration",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "GothamRoundedBold_21016",
                        color: gPrimaryColor,
                        fontSize: 12.sp),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(
                              fontFamily: "GothamMedium",
                              fontSize: 11.sp,
                              color: gPrimaryColor),
                        ),
                        SizedBox(height: 1.h),
                        TextFormField(
                          controller: nameController,
                          cursorColor: gPrimaryColor,
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r"^[a-z A-Z]").hasMatch(value)) {
                              return 'Please enter your Name';
                            } else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
                              return 'Please enter your valid Name';
                            } else {
                              return null;
                            }
                          },
                          decoration: CommonDecoration.buildTextInputDecoration(
                              "Name", nameController),
                          style: TextStyle(
                              fontFamily: "GothamBook",
                              color: gMainColor,
                              fontSize: 11.sp),
                          textInputAction: TextInputAction.next,
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          'Age',
                          style: TextStyle(
                              fontFamily: "GothamMedium",
                              fontSize: 11.sp,
                              color: gPrimaryColor),
                        ),
                        SizedBox(height: 1.h),
                        TextFormField(
                          controller: ageController,
                          cursorColor: gPrimaryColor,
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r"^[a-z A-Z]").hasMatch(value)) {
                              return 'Please enter your Age';
                            } else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
                              return 'Please enter your valid Age';
                            } else {
                              return null;
                            }
                          },
                          decoration: CommonDecoration.buildTextInputDecoration(
                              "Age", ageController),
                          style: TextStyle(
                              fontFamily: "GothamBook",
                              color: gMainColor,
                              fontSize: 11.sp),
                          textInputAction: TextInputAction.next,
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          'Gender',
                          style: TextStyle(
                              fontFamily: "GothamMedium",
                              fontSize: 11.sp,
                              color: gPrimaryColor),
                        ),
                        SizedBox(height: 1.h),
                        TextFormField(
                          controller: genderController,
                          cursorColor: gPrimaryColor,
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r"^[a-z A-Z]").hasMatch(value)) {
                              return 'Please enter your Gender';
                            } else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
                              return 'Please enter your valid Gender';
                            } else {
                              return null;
                            }
                          },
                          decoration: CommonDecoration.buildTextInputDecoration(
                              "Gender", genderController),
                          style: TextStyle(
                              fontFamily: "GothamBook",
                              color: gMainColor,
                              fontSize: 11.sp),
                          textInputAction: TextInputAction.next,
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          'Email',
                          style: TextStyle(
                              fontFamily: "GothamMedium",
                              fontSize: 11.sp,
                              color: gPrimaryColor),
                        ),
                        SizedBox(height: 1.h),
                        TextFormField(
                          controller: emailController,
                          cursorColor: gPrimaryColor,
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r"^[a-z A-Z]").hasMatch(value)) {
                              return 'Please enter your Email';
                            } else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
                              return 'Please enter your valid Email';
                            } else {
                              return null;
                            }
                          },
                          decoration: CommonDecoration.buildTextInputDecoration(
                              "Email", emailController),
                          style: TextStyle(
                              fontFamily: "GothamBook",
                              color: gMainColor,
                              fontSize: 11.sp),
                          textInputAction: TextInputAction.next,
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          'Mobile Number',
                          style: TextStyle(
                              fontFamily: "GothamMedium",
                              fontSize: 11.sp,
                              color: gPrimaryColor),
                        ),
                        SizedBox(height: 1.h),
                        TextFormField(
                          controller: mobileController,
                          cursorColor: gPrimaryColor,
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r"^[a-z A-Z]").hasMatch(value)) {
                              return 'Please enter your Mobile Number';
                            } else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
                              return 'Please enter your valid Mobile Number';
                            } else {
                              return null;
                            }
                          },
                          decoration: CommonDecoration.buildTextInputDecoration(
                              "Mobile Number", mobileController),
                          style: TextStyle(
                              fontFamily: "GothamBook",
                              color: gMainColor,
                              fontSize: 11.sp),
                          textInputAction: TextInputAction.next,
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                const VerificationCodeScreen(),
                          ),
                        );
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
                          'Request OTP',
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
      ),
    );
  }
}
