import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gut_wellness_app/widgets/constants.dart';
import 'package:sizer/sizer.dart';

class BottomTapBar extends StatefulWidget {
  final int index;
  final ValueChanged<int> onChangedTab;
  const BottomTapBar({
    Key? key,
    required this.index,
    required this.onChangedTab,
  }) : super(key: key);

  @override
  _BottomTapBarState createState() => _BottomTapBarState();
}

class _BottomTapBarState extends State<BottomTapBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildTabView(
            index: 0,
            image: 'assets/images/Group 2655.png',
          ),
          buildTabView(
            index: 1,
            image: 'assets/images/Group 2648.png',
          ),
          buildTabView(
            index: 2,
            image: 'assets/images/Group 2649.png',
          ),
        ],
      ),
    );
  }

  Widget buildTabView({
    required int index,
    required String image,
  }) {
    final isSelected = index == widget.index;

    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 1.h),
      child: InkWell(
        child: SizedBox(
          height: 4.h,
          child: Image(
            image: AssetImage(image),
            color: isSelected ? kPrimaryColor : kTextColor,
            fit: BoxFit.contain,
          ),
        ),
        //  SvgPicture.asset(image),
        onTap: () => widget.onChangedTab(index),
      ),
    );
  }

  buildCustomBadge({required Widget child}) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        child,
        const Positioned(
          top: 14,
          right: 14,
          child: CircleAvatar(
            radius: 6,
            backgroundColor: Colors.red,
          ),
        ),
      ],
    );
  }
}
