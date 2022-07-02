import 'package:flutter/material.dart';
import 'package:gut_wellness_app/Screens/program_screens/we_are_gut_wellness_screen.dart';
import 'package:gut_wellness_app/json%20files/yoga_plan_json.dart';
import 'package:gut_wellness_app/widgets/constants.dart';
import 'package:gut_wellness_app/widgets/widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

import 'we_are_gut_wellness_screen.dart';

class ProgramPlansScreen extends StatefulWidget {
  const ProgramPlansScreen({Key? key}) : super(key: key);

  @override
  State<ProgramPlansScreen> createState() => _ProgramPlansScreenState();
}

class _ProgramPlansScreenState extends State<ProgramPlansScreen> {
  List<Widget> itemsData = [];

  @override
  void initState() {
    super.initState();
    getPostsData();
  }

  void getPostsData() {
    List<dynamic> responseList = YOGAPLAN;
    List<Widget> listItems = [];
    for (var post in responseList) {
      listItems.add(
        GestureDetector(
          onTap: () {
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (ct) => const DashboardPage()));
          },
          child: Column(
            children: [
              SizedBox(
                height: 16.h,
                child: Image(
                  image: AssetImage(post["image"]),
                ),
              ),
              SizedBox(height: 0.5.h),
              Text(
                post["slot_time"],
                style: TextStyle(
                    fontFamily: "GothamBook",
                    color: gTextColor,
                    fontSize: 9.sp),
              ),
            ],
          ),
        ),
      );
    }
    setState(() {
      itemsData = listItems;
    });
  }

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildAppBar(() {
                      Navigator.pop(context);
                    }),
                    Text(
                      "Program",
                      style: TextStyle(
                          fontFamily: "GothamRoundedBold_21016",
                          color: gPrimaryColor,
                          fontSize: 12.sp),
                    ),
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  "Yoga Plan",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "GothamRoundedBold_21016",
                      color: gMainColor,
                      fontSize: 12.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                buildYogaPlan(),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "Diet Plan",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "GothamRoundedBold_21016",
                      color: gMainColor,
                      fontSize: 12.sp),
                ),
                SizedBox(height: 2.h),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 20,
                        offset: const Offset(2, 10),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Center(
                          child: SizedBox(
                            height: 18.h,
                            child: const Image(
                              image: AssetImage(
                                  "assets/images/splash_screen/noun-diet-plan-4475046.png"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 3.h),
                      Text(
                        "Tap To Open",
                        style: TextStyle(
                            fontFamily: "GothamBook",
                            color: gTextColor,
                            fontSize: 11.sp),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.h),
                ConfirmationSlider(
                  width: 95.w,
                  text: "Slide To Start",
                  sliderButtonContent: const Image(
                    image: AssetImage(
                        "assets/images/splash_screen/noun-arrow-1921075.png"),
                  ),
                  foregroundColor: kPrimaryColor,
                  foregroundShape: BorderRadius.zero,
                  backgroundShape: BorderRadius.zero,
                  shadow: BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 20,
                    offset: const Offset(2, 10),
                  ),
                  textStyle: TextStyle(
                      fontFamily: "GothamBook",
                      color: gTextColor,
                      fontSize: 11.sp),
                  onConfirmation: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WeAreGutWellnessScreen(),
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

  buildYogaPlan() {
    return SizedBox(
      height: 20.h,
      child: ListView.builder(
        itemCount: itemsData.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return itemsData[index];
        },
      ),
    );
  }
}
