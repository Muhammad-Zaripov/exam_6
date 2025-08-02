import 'package:exam_project/features/albums/presentation/screens/album_screen.dart';
import 'package:exam_project/features/home/presentation/widgets/comment_widget.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/app_assets.dart';

class UserAvatarWidget extends StatelessWidget {
  const UserAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 50,
      right: 15,
      child: Column(
        spacing: 20,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: Colors.white),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(1000),
                  child: Image.asset(
                    AppAssets.image,
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              Positioned(
                bottom: -8,
                left: 0,
                right: 0,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Color(0xFFEA4359),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.add, color: Colors.white, size: 20),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Icon(Icons.favorite, size: 45, color: Colors.white),
              Text(
                '328.7K',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return CommentWidget();
                    },
                  );
                },
                child: Icon(Icons.comment, size: 45, color: Colors.white),
              ),
              Text(
                '578',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Icon(Icons.share, size: 45, color: Colors.white),
              Text(
                'Share',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (cxt) => AlbumsScreen()),
              );
            },
            child: Image.asset(AppAssets.disc, width: 50, height: 50),
          ),
        ],
      ),
    );
  }
}
