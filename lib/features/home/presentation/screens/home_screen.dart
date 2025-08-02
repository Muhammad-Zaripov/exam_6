import 'package:exam_project/core/constants/app_assets.dart';
import 'package:flutter/material.dart';

import '../widgets/home_header.dart';
import '../widgets/user_avatar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(AppAssets.image, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, bottom: 50, left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeHeader(),
                Spacer(),
                Text(
                  '@craig_love',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'The most satisfying Job #fyp #satisfying #roadmarking',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          UserAvatarWidget(),
        ],
      ),
    );
  }
}
