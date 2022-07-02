import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gut_wellness_app/Screens/evalution_form/check_box_settings.dart';
import 'package:gut_wellness_app/Screens/program_screens/we_are_gut_wellness_screen.dart';
import 'package:gut_wellness_app/widgets/constants.dart';
import 'package:gut_wellness_app/widgets/widgets.dart';
import 'package:sizer/sizer.dart';

class DayActivityDetails extends StatefulWidget {
  final String day;
  const DayActivityDetails({Key? key, required this.day}) : super(key: key);

  @override
  State<DayActivityDetails> createState() => _DayActivityDetailsState();
}

class _DayActivityDetailsState extends State<DayActivityDetails> {
  TextEditingController goToBedController = TextEditingController();
  TextEditingController wakeUpController = TextEditingController();

  String selectedValue15 = "";
  String selectedValue16 = "";

  final sleepCheckBox = [
    CheckBoxSettings(title: "I Toss& Turn Alot In Bed"),
    CheckBoxSettings(title: "I Get The Feeling Refreshed"),
    CheckBoxSettings(title: "I Have Difficulty Falling Asleep"),
    CheckBoxSettings(title: "I Sleep Deep"),
    CheckBoxSettings(title: "I Wake Up Feeling Heavy"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 3.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildAppBar(() {
                    Navigator.pop(context);
                  }),
                  Text(
                    "Day ${widget.day} Tracker",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontFamily: "PoppinsSemiBold",
                        color: Colors.white,
                        fontSize: 12.sp),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Expanded(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2, color: Colors.grey.withOpacity(0.5))
                  ],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      buildSleepDetails(),
                      Center(
                        child: CommonButton.sendButton(() {
                          dialog(context);
                        }, "Submit"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildSleepDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Sleep",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: "PoppinsBold",
                  color: kPrimaryColor,
                  fontSize: 15.sp),
            ),
            SizedBox(
              width: 2.w,
            ),
            Expanded(
              child: Container(
                height: 1,
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 3.h,
        ),
        Text(
          'What Time Do You Usually Go To Bed?*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        TextFormField(
          controller: goToBedController,
          cursorColor: kPrimaryColor,
          validator: (value) {
            if (value!.isEmpty || !RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your Weight';
            } else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your valid Weight';
            } else {
              return null;
            }
          },
          decoration: CommonDecoration.buildTextInputDecoration(
              "Time - 00:00", goToBedController),
          textInputAction: TextInputAction.next,
          textAlign: TextAlign.start,
          keyboardType: TextInputType.name,
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'What Time Do You Usuallu Wake Up?*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        TextFormField(
          controller: wakeUpController,
          cursorColor: kPrimaryColor,
          validator: (value) {
            if (value!.isEmpty || !RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter Heal';
            } else if (!RegExp(r"^[a-z A-Z]").hasMatch(value)) {
              return 'Please enter your valid Heal';
            } else {
              return null;
            }
          },
          decoration: CommonDecoration.buildTextInputDecoration(
              "Time - 00:00", wakeUpController),
          textInputAction: TextInputAction.next,
          textAlign: TextAlign.start,
          keyboardType: TextInputType.number,
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'What Does Your Sleep Look Like?*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            ...sleepCheckBox.map(buildSleepCheckBox).toList(),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'Your Sleep Cycle Is*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          children: [
            Radio(
              value: "Regular",
              activeColor: kPrimaryColor,
              groupValue: selectedValue15,
              onChanged: (value) {
                setState(() {
                  selectedValue15 = value as String;
                });
              },
            ),
            Text(
              'Regular',
              style: buildTextStyle(),
            ),
            SizedBox(
              width: 2.w,
            ),
            Radio(
              value: "Irregular",
              activeColor: kPrimaryColor,
              groupValue: selectedValue15,
              onChanged: (value) {
                setState(() {
                  selectedValue15 = value as String;
                });
              },
            ),
            Text(
              'Irregular',
              style: buildTextStyle(),
            ),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          'How Many Hours Of Sleep Do You Get In A Day (Average Over A Week)*',
          style: TextStyle(
            fontSize: 9.sp,
            color: kTextColor,
            fontFamily: "PoppinsSemiBold",
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          children: [
            Radio(
              value: "5 Or Less",
              activeColor: kPrimaryColor,
              groupValue: selectedValue16,
              onChanged: (value) {
                setState(() {
                  selectedValue16 = value as String;
                });
              },
            ),
            Text(
              '5 Or Less',
              style: buildTextStyle(),
            ),
            SizedBox(
              width: 2.w,
            ),
            Radio(
              value: "6-8",
              activeColor: kPrimaryColor,
              groupValue: selectedValue16,
              onChanged: (value) {
                setState(() {
                  selectedValue16 = value as String;
                });
              },
            ),
            Text(
              '6-8',
              style: buildTextStyle(),
            ),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
      ],
    );
  }

  buildSleepCheckBox(CheckBoxSettings sleepCheckBox) {
    return ListTile(
      leading: Checkbox(
        activeColor: kPrimaryColor,
        value: sleepCheckBox.value,
        onChanged: (v) {
          setState(() {
            sleepCheckBox.value = v;
          });
        },
      ),
      title: Text(
        sleepCheckBox.title.toString(),
        style: buildTextStyle(),
      ),
    );
  }

  void dialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: kWhiteColor,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        contentPadding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
        content: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              height: 2.h,
            ),
            const Image(
              image: AssetImage("assets/images/splash_screen/Group 2719.png"),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text('Congrats and completing \nDay ${widget.day}..!!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kPrimaryColor,
                  fontFamily: "PoppinsSemiBold",
                  fontSize: 13.sp,
                )),
            SizedBox(
              height: 8.h,
            ),
            Center(
              child: CommonButton.sendButton(() {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const WeAreGutWellnessScreen(),
                  ),
                );
              }, "Go to Day - 2"),
            ),
            SizedBox(
              height: 1.h,
            ),
          ],
        ),
      ),
    );
  }
}
