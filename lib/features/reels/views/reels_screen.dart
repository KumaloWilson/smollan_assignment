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
    'https://www.sample-videos.com/video321/mp4/720/big_buck_bunny_720p_5mb.mp4',
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

