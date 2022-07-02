import 'package:flutter/material.dart';
import 'package:gut_wellness_app/widgets/constants.dart';
import 'package:sizer/sizer.dart';

import '../Introduction Screens/dashboard_page.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final formKey = GlobalKey<FormState>();
  final commentController = TextEditingController();
  @override
  void initState() {
    super.initState();
    commentController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: kPrimaryColor,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const DashboardPage(),
              ),
            );
          },
          child: const Icon(
            Icons.arrow_back,
            color: kWhiteColor,
          ),
        ),
        title: Column(
          children: [
            Text(
              "Lorem Ipsum",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "GothamMedium",
                  color: gWhiteColor,
                  fontSize: 12.sp),
            ),
            SizedBox(height: 1.h),
            Text(
              "Online",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "GothamMedium",
                  color: gWhiteColor,
                  fontSize: 9.sp),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 1.h),
                    padding: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 1,
                          ),
                        ]),
                    child: Form(
                      key: formKey,
                      child: Center(
                        child: TextFormField(
                          cursorColor: kPrimaryColor,
                          controller: commentController,
                          decoration: InputDecoration(
                            hintText: "Say Something...",
                            hintStyle: TextStyle(
                              color: gTextColor,
                              fontSize: 9.sp,
                              fontFamily: "GothamBook",
                            ),
                            border: InputBorder.none,
                            suffixIcon:
                                commentController.text.toString().isEmpty
                                    ? InkWell(
                                        onTap: () {},
                                        child: const Icon(
                                          Icons.add,
                                          color: kTextColor,
                                        ),
                                      )
                                    : Container(
                                        width: 0,
                                      ),
                          ),
                          style: TextStyle(
                              fontFamily: "GothamMedium",
                              color: gTextColor,
                              fontSize: 9.sp),
                          textInputAction: TextInputAction.next,
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                    ),
                  ),
                ),
                commentController.text.toString().isNotEmpty
                    ? SizedBox(
                        width: 2.w,
                      )
                    : Container(width: 0),
                commentController.text.toString().isEmpty
                    ? Container(
                        width: 0,
                      )
                    : InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.send,
                          color: kPrimaryColor,
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
