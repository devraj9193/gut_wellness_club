import 'package:flutter/material.dart';
import 'package:gut_wellness_app/Screens/program_screens/day%20_activity_details.dart';
import 'package:gut_wellness_app/Screens/program_screens/meal_plan_screen.dart';
import 'package:gut_wellness_app/json%20files/yoga_plan_json.dart';
import 'package:gut_wellness_app/widgets/constants.dart';
import 'package:gut_wellness_app/widgets/widgets.dart';
import 'package:sizer/sizer.dart';

class DayActivityPlans extends StatefulWidget {
  final String day;
  const DayActivityPlans({Key? key, required this.day}) : super(key: key);

  @override
  State<DayActivityPlans> createState() => _DayActivityPlansState();
}

class _DayActivityPlansState extends State<DayActivityPlans> {
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
                  "Yoga Day ${widget.day}",
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
                  "Diet Day ${widget.day}",
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
                SizedBox(height: 4.h),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DayActivityDetails(
                            day: widget.day,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 1.h, horizontal: 10.w),
                      decoration: BoxDecoration(
                        color: gPrimaryColor,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: gMainColor, width: 1),
                      ),
                      child: Text(
                        "Day ${widget.day} Tracker",
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
