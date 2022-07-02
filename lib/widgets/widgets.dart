import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:gut_wellness_app/widgets/constants.dart';
import 'package:sizer/sizer.dart';

class CommonDecoration {
  static InputDecoration buildInputDecoration(
      String hintText, TextEditingController controller) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
          fontFamily: "GothamBook", color: gTextColor, fontSize: 10.sp),
      border: InputBorder.none,
      suffixIcon: controller.text.isEmpty
          ? Container(
              width: 0,
            )
          : IconButton(
              onPressed: () {
                controller.clear();
              },
              icon: const Icon(
                Icons.close,
                color: kPrimaryColor,
              ),
            ),
    );
  }

  static InputDecoration buildTextInputDecoration(
      String hintText, TextEditingController controller) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
        fontFamily: "PoppinsRegular",
        color: Colors.grey,
        fontSize: 10.sp,
      ),
      border: const UnderlineInputBorder(
        borderSide: BorderSide(
            color: kPrimaryColor, width: 1.0, style: BorderStyle.solid),
      ),
      suffixIcon: controller.text.isEmpty
          ? Container(
              width: 0,
            )
          : IconButton(
              onPressed: () {
                controller.clear();
              },
              icon: const Icon(
                Icons.close,
                color: kPrimaryColor,
              ),
            ),
    );
  }
}

// ignore: duplicate_ignore
class CommonButton {
  static ElevatedButton sendButton(func, String title) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: gPrimaryColor,
        onSurface: kSecondaryColor,
        padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 25.w),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: "GothamRoundedBold",
          color: Colors.white,
          fontSize: 13.sp,
        ),
      ),
      onPressed: func,
    );
  }

  // ignore: deprecated_member_use
  static RaisedButton submitButton(func, String title) {
    return RaisedButton(
      color: gPrimaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      padding: EdgeInsets.symmetric(vertical: 0.5.h, horizontal: 3.w),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: "GothamRoundedBold",
          color: Colors.white,
          fontSize: 13.sp,
        ),
      ),
      onPressed: func,
    );
  }
}

TextStyle buildTextStyle() {
  return TextStyle(
    color: kTextColor,
    fontSize: 12,
    fontFamily: "PoppinsRegular",
  );
}

Center buildCircularIndicator() {
  return const Center(
    child: SpinKitDoubleBounce(
      color: kPrimaryColor,
      size: 50.0,
    ),
  );
}

SnackbarController buildSnackBar(String title, String subTitle) {
  return Get.snackbar(
    title,
    subTitle,
    titleText: Text(
      title,
      style: TextStyle(
        fontFamily: "PoppinsSemiBold",
        color: kWhiteColor,
        fontSize: 13.sp,
      ),
    ),
    messageText: Text(
      subTitle,
      style: TextStyle(
        fontFamily: "PoppinsMedium",
        color: kWhiteColor,
        fontSize: 12.sp,
      ),
    ),
    backgroundColor: kPrimaryColor.withOpacity(0.5),
    snackPosition: SnackPosition.BOTTOM,
    colorText: kWhiteColor,
    margin: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
    borderRadius: 10,
    duration: const Duration(seconds: 2),
    isDismissible: true,
    dismissDirection: DismissDirection.horizontal,
    forwardAnimationCurve: Curves.decelerate,
  );
}

Row buildAppBar(VoidCallback func) {
  return Row(
    children: [
      SizedBox(
        height: 2.h,
        child: InkWell(
          onTap: func,
          child: const Image(
            image: AssetImage(
                "assets/images/splash_screen/Icon ionic-ios-arrow-back.png"),
          ),
        ),
      ),
      SizedBox(
        height: 7.h,
        child: const Image(
          image: AssetImage(
              "assets/images/splash_screen/Gut welness logo (1).png"),
        ),
        //SvgPicture.asset("assets/images/splash_screen/Inside Logo.svg"),
      ),
    ],
  );
}

// AppBar buildAppBar(String title, VoidCallback fun) {
//   return AppBar(
//     elevation: 0.0,
//     backgroundColor: kContentColor,
//     automaticallyImplyLeading: false,
//     title: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Row(
//           children: [
//             InkWell(
//               onTap: fun,
//               child: const Icon(
//                 Icons.chevron_left,
//                 color: kSecondaryColor,
//               ),
//             ),
//             SizedBox(width: 1.w),
//             Text(
//               title,
//               style: TextStyle(
//                 fontFamily: "PoppinsMedium",
//                 fontSize: 13.sp,
//                 color: kPrimaryColor,
//               ),
//             ),
//           ],
//         ),
//         SizedBox(
//           width: 25.w,
//           height: 5.h,
//           child: SvgPicture.asset(
//             'assets/images/ResiLink_Logo_with_Tagline_RGB.svg',
//             fit: BoxFit.fill,
//           ),
//         ),
//       ],
//     ),
//   );
//}