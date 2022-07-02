import 'package:flutter/material.dart';
import 'package:gut_wellness_app/widgets/constants.dart';
import 'package:sizer/sizer.dart';

class CookKitTracking extends StatefulWidget {
  const CookKitTracking({Key? key}) : super(key: key);

  @override
  State<CookKitTracking> createState() => _CookKitTrackingState();
}

class _CookKitTrackingState extends State<CookKitTracking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: 45.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage("assets/images/splash_screen/Group 2541.png"),
                ),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 6.h, left: 3.w),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: gMainColor,
                          ),
                        ),
                        Text(
                          "Ready to cook Kit Shipping",
                          style: TextStyle(
                            fontFamily: "GothamRoundedBold_21016",
                            fontSize: 12.sp,
                            color: gPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      height: 25.h,
                      child: const Image(
                        image: AssetImage("assets/images/splash_screen/G.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 3.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTrackingArea(
                      "Packed", "assets/images/splash_screen/Group 2788.png"),
                  buildTrackingArea("Picked Up",
                      "assets/images/splash_screen/Group 2482.png"),
                  buildTrackingArea("Intransit",
                      "assets/images/splash_screen/Group 2786.png"),
                  buildTrackingArea("Arrived @ destination hub",
                      "assets/images/splash_screen/Group 2495.png"),
                  buildTrackingArea("Out for Delivery",
                      "assets/images/splash_screen/Group 2483.png"),
                  buildTrackingArea("Delivered",
                      "assets/images/splash_screen/Group 2485.png"),
                  SizedBox(height: 5.h),
                  Text(
                    "Delivery Address",
                    style: TextStyle(
                      fontFamily: "GothamRoundedBold_21016",
                      fontSize: 12.sp,
                      color: gPrimaryColor,
                    ),
                  ),
                  SizedBox(height: 1.h),
                  ListTile(
                    leading: Container(
                      height: 5.h,
                      width: 12.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: gMainColor, width: 1),
                      ),
                      child: const Icon(
                        Icons.location_on,
                        color: gPrimaryColor,
                      ),
                    ),
                    title: Text(
                      "477/3 Lorem lpsum Diansms,94107,Bangalore",
                      style: TextStyle(
                        height: 1.5,
                        fontFamily: "GothamBook",
                        fontSize: 11.sp,
                        color: gTextColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildTrackingArea(String title, String image) {
    return ListTile(
      leading: Container(
        height: 4.h,
        width: 10.w,
        padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 0.5.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          border: Border.all(color: gSecondaryColor.withOpacity(0.3), width: 1),
        ),
        child: Image(
          image: AssetImage(image),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: "GothamMedium",
          fontSize: 11.sp,
          color: gTextColor,
        ),
      ),
    );
  }
}
