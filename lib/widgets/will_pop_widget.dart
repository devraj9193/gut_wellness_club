import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gut_wellness_app/widgets/constants.dart';
import 'package:sizer/sizer.dart';

class WillPopWidget extends StatefulWidget {
  final Widget? child;
  const WillPopWidget({Key? key, this.child}) : super(key: key);

  @override
  _WillPopWidgetState createState() => _WillPopWidgetState();
}

class _WillPopWidgetState extends State<WillPopWidget> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: widget.child!,
      onWillPop: _onWillPop,
    );
  }

  moveToScreen() async {
    Navigator.pop(context);
  }

  Future<bool> _onWillPop() async {
    // ignore: avoid_print
    print('back pressed');
    return await showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  backgroundColor: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0.sp))),
                  contentPadding: EdgeInsets.only(top: 1.h),
                  content: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
                    color: Colors.white,
                    width: 50.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('Are you sure?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 16.sp,
                            )),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Divider(
                          color: Colors.grey,
                          height: 4.0,
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 4.w, right: 4.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      2.w, 1.h, 2.w, 1.h),
                                  child: Text('Do you want to exit an App?',
                                      style: TextStyle(
                                        color: kPrimaryColor,
                                        fontSize: 15.sp,
                                      )),
                                ),
                              ],
                            )),
                        Padding(
                          padding: EdgeInsets.only(right: 2.w, bottom: 1.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.of(context).pop(false),
                                child: Container(
                                    padding: EdgeInsets.all(7.sp),
                                    decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Text("NO",
                                        style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: 12.sp,
                                        ))),
                              ),
                              SizedBox(width: 3.w),
                              GestureDetector(
                                onTap: () => SystemNavigator.pop(),
                                child: Container(
                                    padding: EdgeInsets.all(7.sp),
                                    decoration: BoxDecoration(
                                        color: kPrimaryColor,
                                        borderRadius: BorderRadius.circular(3)),
                                    child: Text("YES",
                                        style: TextStyle(
                                          color: kPrimaryColor,
                                          fontSize: 12.sp,
                                        ))),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )) ??
        false;
  }
}
