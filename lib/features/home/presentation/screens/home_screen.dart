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

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.8,
      padding: EdgeInsets.only(top: 12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '578 coments',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ],
          ),

          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: Colors.white),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(1000),
                      child: Image.asset(
                        AppAssets.image,
                        fit: BoxFit.cover,
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                  title: Text('martini_rond'),
                  subtitle: Text('How neatly I write the date in my book 22h'),
                  trailing: Column(
                    children: [Icon(Icons.favorite_border), Text('8098')],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
