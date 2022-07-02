import 'package:flutter/material.dart';
import 'package:gut_wellness_app/Screens/program_screens/post_program_protocol_screens/post_program_protocol_details.dart';
import 'package:gut_wellness_app/widgets/constants.dart';
import 'package:gut_wellness_app/widgets/widgets.dart';
import 'package:sizer/sizer.dart';

class PostProgramProtocol extends StatefulWidget {
  const PostProgramProtocol({Key? key}) : super(key: key);

  @override
  State<PostProgramProtocol> createState() => _PostProgramProtocolState();
}

class _PostProgramProtocolState extends State<PostProgramProtocol> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kSecondaryColor,
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
                    "Program",
                    style: TextStyle(
                      fontFamily: "PoppinsBold",
                      fontSize: 12.sp,
                      color: kTextColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              builddetails(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: kWhiteColor,
                      onSurface: kSecondaryColor,
                      padding:
                          EdgeInsets.symmetric(vertical: 1.h, horizontal: 5.w),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                    ),
                    child: Text(
                      "Refer",
                      style: TextStyle(
                        fontFamily: "PoppinsRegular",
                        color: kPrimaryColor,
                        fontSize: 13.sp,
                      ),
                    ),
                    onPressed: () {
                      dialog(context);
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: kWhiteColor,
                      onSurface: kSecondaryColor,
                      padding:
                          EdgeInsets.symmetric(vertical: 1.h, horizontal: 5.w),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                    ),
                    child: Text(
                      "Redo",
                      style: TextStyle(
                        fontFamily: "PoppinsRegular",
                        color: kPrimaryColor,
                        fontSize: 13.sp,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  builddetails() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Post Program Protocol",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: "PoppinsBold", color: kTextColor, fontSize: 12.sp),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 2.h),
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
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ct) => const PostProgramProtocolDetails(),
                  ),
                );
              },
              child: Center(
                child: SizedBox(
                  height: 18.h,
                  child: const Image(
                    image: AssetImage(
                        "assets/images/splash_screen/Group 2722.png"),
                  ),
                ),
              ),
            ),
          ),
        ],
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
        contentPadding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
        content: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "Refer",
              style: TextStyle(
                  color: kTextColor,
                  fontSize: 15.sp,
                  fontFamily: "PoppinsSemiBold"),
            ),
            SizedBox(
              height: 1.h,
            ),
            const Divider(
              color: Colors.grey,
              height: 4.0,
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
                'Lorem lpsum is simply dummy text of the printing and typesetting industry.Lorem lpsum has been the industry\'s standard dummy text ever since the 1500s,when an unknown printer took a gallery of type and scrambled it to make a type specimen book.',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: kTextColor,
                  fontFamily: "PoppinsRegular",
                  fontSize: 9.sp,
                )),
            SizedBox(
              height: 1.h,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 1.h),
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 1,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () async {},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 2.w, vertical: 1.h),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 2, 163, 238),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Copy Link',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 9.sp,
                                color: kWhiteColor,
                                fontFamily: "PoppinsRegular",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Expanded(
                      child: Text(
                        'https://www.flaticon.com/search?',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 9.sp,
                          color: kTextColor,
                          fontFamily: "PoppinsRegular",
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
