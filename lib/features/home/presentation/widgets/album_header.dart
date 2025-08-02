import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';

class AlbumHeader extends StatelessWidget {
  const AlbumHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 18),
      child: Row(
        spacing: 12,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                AppAssets.album,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 0,
                bottom: 0,
                right: 0,
                left: 0,
                child: Icon(Icons.play_arrow, size: 40, color: Colors.white),
              ),
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'The Round',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 5),
              Text('Roddy Roundicch', style: TextStyle(fontSize: 14)),
              SizedBox(height: 4),
              Text('1.7M videos', style: TextStyle(fontSize: 14)),
              SizedBox(height: 7),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Color(0xFFE3E3E4)),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                child: Row(
                  children: [
                    Icon(Icons.bookmark_border, size: 20),
                    Text(
                      'Add to Favorites',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
