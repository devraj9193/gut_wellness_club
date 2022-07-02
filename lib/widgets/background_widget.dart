import 'package:flutter/material.dart';
import 'package:gut_wellness_app/widgets/constants.dart';

class BackgroundWidget extends StatelessWidget {
  final String? assetName;
  final Widget? child;
  const BackgroundWidget(
      {Key? key, required this.assetName, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(assetName.toString()),
         fit: BoxFit.cover,
          colorFilter: const ColorFilter.mode(kPrimaryColor, BlendMode.darken)
        ),
        // gradient: LinearGradient(
        //     begin: Alignment.topCenter,
        //     end: Alignment.bottomCenter,
        //     colors: [
        //       MainTheme.startColor,
        //       MainTheme.endColor
        //     ]
        // ),
      ),
      child: child,
    );
  }
}
