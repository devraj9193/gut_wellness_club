import 'package:flutter/material.dart';
import 'package:gut_wellness_app/Introduction%20Screens/documents_screen.dart';
import 'package:gut_wellness_app/widgets/constants.dart';
import 'package:gut_wellness_app/widgets/widgets.dart';
import 'package:sizer/sizer.dart';
import 'package:dotted_border/dotted_border.dart';
import '../Register Screens/register_screen.dart';

class GivenDetailsScreen extends StatefulWidget {
  const GivenDetailsScreen({Key? key}) : super(key: key);

  @override
  State<GivenDetailsScreen> createState() => _GivenDetailsScreenState();
}

class _GivenDetailsScreenState extends State<GivenDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:
              EdgeInsets.only(left: 4.w, right: 4.w, top: 1.h, bottom: 5.h),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildAppBar(() {
                  Navigator.pop(context);
                }),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  "Thank you for your details.",
                  style: TextStyle(
                      fontFamily: "GothamRoundedBold_21016",
                      color: gPrimaryColor,
                      fontSize: 12.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "These are problem we regularly heal through our program and hence this program seems to be a great fit for you.",
                  style: TextStyle(
                      height: 1.5,
                      fontFamily: "GothamBook",
                      color: gTextColor,
                      fontSize: 11.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Here is a detailed description of our program & how we go about healing you.",
                  style: TextStyle(
                      height: 1.5,
                      fontFamily: "GothamBook",
                      color: gTextColor,
                      fontSize: 11.sp),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Please feel free to take a deep read & see how we use just 100% natural food & yoga to detox & heal your entire gut.",
                  style: TextStyle(
                      height: 1.5,
                      fontFamily: "GothamBook",
                      color: gTextColor,
                      fontSize: 11.sp),
                ),
                SizedBox(
                  height: 4.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const DocumentsScreen(),
                      ),
                    );
                  },
                  child: DottedBorder(
                    color: gMainColor,
                    strokeWidth: 1,
                    dashPattern: const [8, 5],
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 3.h),
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15.h,
                              child: const Image(
                                image: AssetImage(
                                    "assets/images/splash_screen/noun-paper-4405406.png"),
                              ),
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              "Tap To Open",
                              style: TextStyle(
                                  fontFamily: "PoppinsSemiBold",
                                  color: gTextColor,
                                  fontSize: 11.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
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
                        "I'm interested",
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

  openDocuments() {
    Size size = MediaQuery.of(context).size;
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        color: kWhiteColor,
        height: 80.h,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 1.h,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.chevron_left,
                    color: kTextColor,
                  ),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Text(
                  'Document',
                  style: TextStyle(
                      fontFamily: "PoppinsSemiBold",
                      color: kTextColor,
                      fontSize: 12.sp),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 1.h),
              height: 1,
              color: Colors.grey,
            ),
            Text(
              'Lorem lpsum is simply dummy text of the printing and typesetting industry.Lorem lpsum has been the industry\'s standard dummy text ever since the 1500s,when an unknown printer took a gallery of type and scrambled it to make a type specimen book.It has survived not only five centuries,but also the leap into electronic typesetting,remaining essentially unchanged.It was popularised in the 1960s with the release of Letraset sheets containing Lorem lpsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem lpsum. long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem lpsum is that it has amore_or_less normal distribution of letters, as opposed to using \'Content here,content here\',making it look like readable english. Many desktop publishing packages and web page editors now use Lorem lpsum as their default model text,and asearch for \'lorem lpsum\' will uncover many web sites still in their infancy.Various versions have evolved over the years,sometimes by accident, sometimes on purpose(injected humour and the like).',
              style: TextStyle(
                  fontFamily: "PoppinsMedium",
                  color: kTextColor,
                  fontSize: 10.sp),
            ),
          ],
        ),
      ),
    );
  }
}
