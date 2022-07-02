import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gut_wellness_app/Introduction%20Screens/dashboard_page.dart';
import 'package:gut_wellness_app/Screens/upload_reports_screen.dart';
import 'package:gut_wellness_app/widgets/background_widget.dart';
import 'package:gut_wellness_app/widgets/will_pop_widget.dart';

import 'Introduction Screens/gut_detox_program_screen.dart';
import 'Introduction Screens/introduction_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 1) {
        _currentPage++;
      } else {
        _currentPage = 1;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopWidget(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            PageView(
              reverse: false,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              controller: _pageController,
              children: <Widget>[
                splashImage(),
                // const IntroductionScreen(),
                const DashboardPage(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  splashImage() {
    return const BackgroundWidget(
      assetName: 'assets/images/splash_screen/Group 2657.png',
      child: Center(
        child: Image(
          image: AssetImage(
              "assets/images/splash_screen/Gut welness logo (1).png"),
        ),
        // SvgPicture.asset(
        //     "assets/images/splash_screen/Splash screen Logo.svg"),
      ),
    );
  }
}
