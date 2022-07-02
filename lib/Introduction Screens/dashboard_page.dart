import 'package:flutter/material.dart';
import 'package:gut_wellness_app/Screens/program_stages_screen.dart';
import 'package:gut_wellness_app/profile_screens/my_profile_screen.dart';
import 'package:gut_wellness_app/widgets/constants.dart';

import '../message_screens/chat_screen.dart';
import 'bottom_tap_bar.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _bottomNavIndex = 0;

  void _onItemTapped(int index) {
    if (index != 1) {
      setState(() {
        _bottomNavIndex = index;
      });
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const ChatScreen()),
      );
    }
  }

  pageCaller(int index) {
    switch (index) {
      case 0:
        {
          return const ProgramStagesScreen();
        }
      case 2:
        {
          return const MyProfileScreen();
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: pageCaller(_bottomNavIndex),
      bottomNavigationBar: BottomTapBar(
        index: _bottomNavIndex,
        onChangedTab: _onItemTapped,
      ),
    );
  }

  void onChangedTab(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }
}
