import 'package:flutter/material.dart';
import 'package:gut_wellness_app/widgets/constants.dart';
import 'package:sizer/sizer.dart';

class FAQScreen extends StatefulWidget {
  const FAQScreen({Key? key}) : super(key: key);

  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 1.2.h,
            width: 12.w,
            margin: EdgeInsets.symmetric(vertical: 1.5.h),
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          SizedBox(height: 1.h),
          Text(
            "FAQ",
            style: TextStyle(
              color: kTextColor,
              fontFamily: 'PoppinsMedium',
              fontSize: 15.sp,
            ),
          ),
          SizedBox(height: 3.h),
          buildQuestions("Lorem lpsum is simply dummy text of the printing ?"),
          Container(
            margin: EdgeInsets.symmetric(vertical: 3.h),
            height: 1,
            color: Colors.grey,
          ),
          buildQuestions("Lorem lpsum is simply dummy text of the printing ?"),
          Container(
            margin: EdgeInsets.symmetric(vertical: 3.h),
            height: 1,
            color: Colors.grey,
          ),
          buildQuestions("Lorem lpsum is simply dummy text of the printing ?"),
          Container(
            margin: EdgeInsets.symmetric(vertical: 3.h),
            height: 1,
            color: Colors.grey,
          ),
          buildQuestions("Lorem lpsum is simply dummy text of the printing ?"),
          Container(
            margin: EdgeInsets.symmetric(vertical: 3.h),
            height: 1,
            color: Colors.grey,
          ),
          buildQuestions("Lorem lpsum is simply dummy text of the printing ?"),
          Container(
            margin: EdgeInsets.symmetric(vertical: 3.h),
            height: 1,
            color: Colors.grey,
          ),
          buildQuestions("Lorem lpsum is simply dummy text of the printing ?"),
        ],
      ),
    );
  }

  buildQuestions(String title) {
    return Text(
      title,
      style: TextStyle(
        color: kTextColor,
        fontFamily: 'PoppinsRegular',
        fontSize: 9.sp,
      ),
    );
  }
}
