import 'package:flutter/material.dart';

import '../../../widgets/reels_widget/reel_bottom_overlay.dart';
import '../../../widgets/reels_widget/reel_interaction_sidebar.dart';
import '../../../widgets/reels_widget/reel_video_player.dart';


class ReelsScreen extends StatefulWidget {
  const ReelsScreen({super.key});

  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  final List<String> reelUrls = [
    'https://example.com/reel1.mp4',
    'https://example.com/reel2.mp4',
    'https://example.com/reel3.mp4',
    // Add more reel URLs as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Reels',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt_outlined, ),
            onPressed: () {},
          ),
        ],
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: reelUrls.length,
        itemBuilder: (context, index) {
          return Stack(
            fit: StackFit.expand,
            children: [
              ReelVideoPlayer(videoUrl: reelUrls[index]),
              ReelInteractionSidebar(),
              ReelBottomOverlay(),
            ],
          );
        },
      ),
    );
  }
}

