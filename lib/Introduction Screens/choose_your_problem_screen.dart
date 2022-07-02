import 'package:flutter/material.dart';
import 'package:gut_wellness_app/Introduction%20Screens/given_details_screen.dart';
import 'package:gut_wellness_app/Screens/evalution_form/check_box_settings.dart';
import 'package:gut_wellness_app/widgets/constants.dart';
import 'package:gut_wellness_app/widgets/widgets.dart';
import 'package:sizer/sizer.dart';

class ChooseYourProblemScreen extends StatefulWidget {
  const ChooseYourProblemScreen({Key? key}) : super(key: key);

  @override
  State<ChooseYourProblemScreen> createState() =>
      _ChooseYourProblemScreenState();
}

class _ChooseYourProblemScreenState extends State<ChooseYourProblemScreen> {
  final formKey = GlobalKey<FormState>();
  final message = TextEditingController();
  bool isSelected = false;

  final chooseProblem = <CheckBoxSettings>[
    CheckBoxSettings(title: "Choose Your Problem"),
    CheckBoxSettings(title: "Choose Your Problem"),
    CheckBoxSettings(title: "Choose Your Problem"),
    CheckBoxSettings(title: "Choose Your Problem"),
    CheckBoxSettings(title: "Choose Your Problem"),
    CheckBoxSettings(title: "Choose Your Problem"),
    CheckBoxSettings(title: "Choose Your Problem"),
    CheckBoxSettings(title: "Choose Your Problem"),
  ];

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
                buildAppBar(() {
                  Navigator.pop(context);
                }),
                SizedBox(
                  height: 3.h,
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                    child: Text(
                      "What problem are you experiencing \nat the moment",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          height: 1.5,
                          fontFamily: "GothamRoundedBold_21016",
                          color: gPrimaryColor,
                          fontSize: 11.sp),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 3.h),
                  padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
                  decoration: BoxDecoration(
                    color: const Color(0xffF8F8F8),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: gMainColor, width: 0.4),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Choose Your Problem",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "GothamRoundedBold_21016",
                            color: gMainColor,
                            fontSize: 10.sp),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      ListView(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        children: [
                          ...chooseProblem.map(buildChooseProblem).toList(),
                        ],
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Tell us a bit more about Your Problem',
                    style: TextStyle(
                      fontSize: 11.sp,
                      color: gPrimaryColor,
                      fontFamily: "GothamRoundedBold_21016",
                    ),
                  ),
                ),
                Form(
                  key: formKey,
                  child: Container(
                    height: 20.h,
                    margin: EdgeInsets.symmetric(vertical: 3.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                    decoration: BoxDecoration(
                      color: const Color(0xffF8F8F8),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: gMainColor, width: 0.4),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 10,
                          offset: const Offset(2, 3),
                        ),
                      ],
                    ),
                    child: TextFormField(
                      maxLines: 100,
                      controller: message,
                      cursorColor: kSecondaryColor,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your Message';
                        } else {
                          return null;
                        }
                      },
                      decoration: CommonDecoration.buildInputDecoration(
                          "Type Your Message....", message),
                      style: TextStyle(
                          fontFamily: "GothamBook",
                          color: gTextColor,
                          fontSize: 9.sp),
                      textInputAction: TextInputAction.next,
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                !isSelected
                    ? Center(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 1.h, horizontal: 25.w),
                          decoration: BoxDecoration(
                            color: gMainColor,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: gMainColor, width: 1),
                          ),
                          child: Text(
                            'NEXT',
                            style: TextStyle(
                              fontFamily: "GothamRoundedBold_21016",
                              color: gPrimaryColor,
                              fontSize: 13.sp,
                            ),
                          ),
                        ),
                      )
                    : Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    const GivenDetailsScreen(),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 1.h, horizontal: 25.w),
                            decoration: BoxDecoration(
                              color: gPrimaryColor,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: gMainColor, width: 1),
                            ),
                            child: Text(
                              'NEXT',
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
    );
  }

  buildChooseProblem(CheckBoxSettings healthCheckBox) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            child: Container(
              height: 2.5.h,
              width: 5.w,
              margin: EdgeInsets.symmetric(vertical: 1.h),
              decoration: BoxDecoration(
                color: isSelected ? gPrimaryColor : gWhiteColor,
                // border: Border.all(color: gMainColor, width: 0.2),
                boxShadow: isSelected
                    ? []
                    : [
                        BoxShadow(
                          color: gMainColor.withOpacity(0.3),
                          blurRadius: 5,
                          // offset: const Offset(2, 3),
                        ),
                      ],
              ),
              child: isSelected
                  ? Center(
                      child: Icon(
                        Icons.check,
                        color: gMainColor,
                        size: 2.h,
                      ),
                    )
                  : null,
            ),
          ),
          // Checkbox(
          //   activeColor: gPrimaryColor,
          //   checkColor: gMainColor,
          //   value: healthCheckBox.value,
          //   onChanged: (v) {
          //     setState(() {
          //       healthCheckBox.value = v;
          //     });
          //   },
          // ),
          SizedBox(width: 3.w),
          Text(
            healthCheckBox.title.toString(),
            style: TextStyle(
                fontFamily: "GothamMedium",
                color: isSelected ? gPrimaryColor : gTextColor,
                fontSize: 10.sp),
          ),
        ],
      ),
    );
  }
}
