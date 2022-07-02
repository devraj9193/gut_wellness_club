import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gut_wellness_app/Screens/program_screens/community_screen/community_explore.dart';
import 'package:gut_wellness_app/Screens/program_screens/day_activity_plans.dart';
import 'package:gut_wellness_app/Screens/program_screens/post_program_consultation_screens/consultation_time_calender.dart';
import 'package:gut_wellness_app/Screens/program_screens/post_program_protocol_screens/post_program_protocol.dart';
import 'package:gut_wellness_app/json%20files/days_json.dart';
import 'package:gut_wellness_app/widgets/constants.dart';
import 'package:gut_wellness_app/widgets/widgets.dart';
import 'package:sizer/sizer.dart';

class WeAreGutWellnessScreen extends StatefulWidget {
  const WeAreGutWellnessScreen({Key? key}) : super(key: key);

  @override
  State<WeAreGutWellnessScreen> createState() => _WeAreGutWellnessScreenState();
}

class _WeAreGutWellnessScreenState extends State<WeAreGutWellnessScreen> {
  int _current = 0;
  dynamic isSelected = "1";

  final List<String> imgList = [
    'assets/images/gut_wellness.png',
    'assets/images/gut_wellness.png',
    'assets/images/gut_wellness.png',
    'assets/images/gut_wellness.png',
  ];

  List<Widget> itemsData = [];

  @override
  void initState() {
    super.initState();
    getPostsData();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList
        .map((item) => ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: [
                  Container(
                    height: 25.h,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(item),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 24.w, right: 3.w),
                      child: Center(
                        child: Text(
                          'There are many variations of passages of Lorem Ipsum available,',
                          style: TextStyle(
                            color: gWhiteColor,
                            fontFamily: "GothamRoundedBold_21016",
                            fontSize: 9.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ))
        .toList();
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
                CarouselSlider(
                  items: imageSliders,
                  options: CarouselOptions(
                      autoPlay: false,
                      enlargeCenterPage: true,
                      aspectRatio: 2.0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.map((url) {
                    int index = imgList.indexOf(url);
                    return Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.symmetric(horizontal: 1.w),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == index ? kPrimaryColor : kSoundColor,
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 2.h,
                ),
                buildDays(),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  'Lorem lpsum is simply dummy text of the printing and typesetting industry.Lorem lpsum has been the industry\'s standard dummy text ever since the 1500s,when an unknown printer took a gallery of type and scrambled it to make a type specimen book.It has survived not only five centuries,but also the leap into electronic typesetting, remaining essentially unchanged.',
                  style: TextStyle(
                    height: 1.7,
                    color: gTextColor,
                    fontFamily: "GothamBook",
                    fontSize: 10.sp,
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                buildsession(),
                buildPostProgramConsultation(),
                buildPostProgramProtocol(),
                buildYogaSession(),
                buildCommunity(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void changedIndex(dynamic index) {
    setState(() {
      isSelected = index;
    });
  }

  buildDays() {
    return SizedBox(
      height: 5.h,
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

  void getPostsData() {
    List<dynamic> responseList = DAYS;
    List<Widget> listItems = [];
    for (var post in responseList) {
      listItems.add(
        GestureDetector(
          onTap: () {
            changedIndex(post["days"]);
          },
          child: buildDaysdesign(post["days"]),
        ),
      );
    }
    setState(() {
      itemsData = listItems;
    });
  }

  buildDaysdesign(String post) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1.h, horizontal: 1.w),
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      decoration: BoxDecoration(
        color: (isSelected != post) ? gWhiteColor : gPrimaryColor,
        boxShadow: (isSelected != post)
            ? [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 1,
                ),
              ]
            : [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 10,
                  offset: const Offset(1, 2),
                ),
              ],
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: gMainColor, width: 1),
      ),
      child: Center(
        child: Text(
          "Day ${post.toString()}",
          style: TextStyle(
            color: (isSelected != post) ? gTextColor : gWhiteColor,
            fontFamily: "GothamBook",
            fontSize: 8.sp,
          ),
        ),
      ),
    );
  }

  buildsession() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ct) => DayActivityPlans(
              day: isSelected,
            ),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(left: 3.w, top: 1.h, bottom: 1.h, right: 5.w),
        margin: EdgeInsets.symmetric(vertical: 1.5.h),
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: gMainColor.withOpacity(0.5), width: 1),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 1,
              ),
            ]),
        child: Row(
          children: [
            Image(
              height: 7.h,
              image: const AssetImage(
                  "assets/images/splash_screen/calorie-counter-health-diet-app-concept.png"),
              fit: BoxFit.contain,
            ),
            SizedBox(width: 5.w),
            Expanded(
              child: Text(
                "Continue Day $isSelected Program",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                maxLines: 2,
                style: TextStyle(
                  fontFamily: "GothamRoundedBold_21016",
                  color: gPrimaryColor,
                  fontSize: 10.sp,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ct) => DayActivityPlans(
                      day: isSelected,
                    ),
                  ),
                );
              },
              child: Image(
                height: 3.h,
                image: const AssetImage(
                    "assets/images/splash_screen/noun-arrow-1018952.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildYogaSession() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(left: 3.w, top: 1.h, bottom: 1.h, right: 5.w),
        margin: EdgeInsets.symmetric(vertical: 1.5.h),
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: gMainColor.withOpacity(0.5), width: 1),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 1,
              ),
            ]),
        child: Row(
          children: [
            Image(
              height: 7.h,
              image: const AssetImage(
                  "assets/images/splash_screen/Group 2697.png"),
              fit: BoxFit.contain,
            ),
            SizedBox(width: 5.w),
            Expanded(
              child: Text(
                "Live Yoga Session",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                maxLines: 2,
                style: TextStyle(
                  fontFamily: "GothamRoundedBold_21016",
                  color: gPrimaryColor,
                  fontSize: 10.sp,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Image(
                height: 3.h,
                image: const AssetImage(
                    "assets/images/splash_screen/noun-arrow-1018952.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildPostProgramConsultation() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ct) => const ConsultationTimeCalender(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(left: 3.w, top: 1.h, bottom: 1.h, right: 5.w),
        margin: EdgeInsets.symmetric(vertical: 1.5.h),
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: gMainColor.withOpacity(0.5), width: 1),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 1,
              ),
            ]),
        child: Row(
          children: [
            Image(
              height: 7.h,
              image: const AssetImage(
                  "assets/images/splash_screen/calorie-counter-health-diet-app-concept.png"),
              fit: BoxFit.contain,
            ),
            SizedBox(width: 5.w),
            Expanded(
              child: Text(
                "Post Program Consultation",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                maxLines: 2,
                style: TextStyle(
                  fontFamily: "GothamRoundedBold_21016",
                  color: gPrimaryColor,
                  fontSize: 10.sp,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ct) => const ConsultationTimeCalender(),
                  ),
                );
              },
              child: Image(
                height: 3.h,
                image: const AssetImage(
                    "assets/images/splash_screen/noun-arrow-1018952.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildPostProgramProtocol() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ct) => const PostProgramProtocol(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(left: 3.w, top: 1.h, bottom: 1.h, right: 5.w),
        margin: EdgeInsets.symmetric(vertical: 1.5.h),
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: gMainColor.withOpacity(0.5), width: 1),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 1,
              ),
            ]),
        child: Row(
          children: [
            Image(
              height: 7.h,
              image: const AssetImage(
                  "assets/images/splash_screen/calorie-counter-health-diet-app-concept.png"),
              fit: BoxFit.contain,
            ),
            SizedBox(width: 5.w),
            Expanded(
              child: Text(
                "Post Program Protocol",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                maxLines: 2,
                style: TextStyle(
                  fontFamily: "GothamRoundedBold_21016",
                  color: gPrimaryColor,
                  fontSize: 10.sp,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ct) => const PostProgramProtocol(),
                  ),
                );
              },
              child: Image(
                height: 3.h,
                image: const AssetImage(
                    "assets/images/splash_screen/noun-arrow-1018952.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildCommunity() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ct) => const CommunityExplore(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(left: 3.w, top: 1.h, bottom: 1.h, right: 5.w),
        margin: EdgeInsets.symmetric(vertical: 1.5.h),
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: gMainColor.withOpacity(0.5), width: 1),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 1,
              ),
            ]),
        child: Row(
          children: [
            Image(
              height: 7.h,
              image: const AssetImage(
                  "assets/images/splash_screen/hannah-busing-Zyx1bK9mqmA-unsplash.png"),
              fit: BoxFit.contain,
            ),
            SizedBox(width: 5.w),
            Expanded(
              child: Text(
                "Community",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                maxLines: 2,
                style: TextStyle(
                  fontFamily: "GothamRoundedBold_21016",
                  color: gPrimaryColor,
                  fontSize: 10.sp,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ct) => const CommunityExplore(),
                  ),
                );
              },
              child: Image(
                height: 3.h,
                image: const AssetImage(
                    "assets/images/splash_screen/noun-arrow-1018952.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
