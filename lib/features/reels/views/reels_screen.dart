import 'package:flutter/material.dart';

import '../../../widgets/reels_widget/reel_bottom_overlay.dart';
import '../../../widgets/reels_widget/reel_interaction_sidebar.dart';
import '../../../widgets/reels_widget/reel_video_player.dart';

class ReelsScreen extends StatefulWidget {
  const ReelsScreen({super.key});

  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> with AutomaticKeepAliveClientMixin {
  final List<String> reelUrls = [
    'https://www.sample-videos.com/video321/mp4/720/big_buck_bunny_720p_5mb.mp4',
    'https://www.sample-videos.com/video321/mp4/720/big_buck_bunny_720p_5mb.mp4',
    'https://www.sample-videos.com/video321/mp4/720/big_buck_bunny_720p_5mb.mp4',
    'https://www.sample-videos.com/video321/mp4/720/big_buck_bunny_720p_5mb.mp4',
    'https://www.sample-videos.com/video321/mp4/720/big_buck_bunny_720p_5mb.mp4',
    'https://www.sample-videos.com/video321/mp4/720/big_buck_bunny_720p_5mb.mp4',
    'https://www.sample-videos.com/video321/mp4/720/big_buck_bunny_720p_5mb.mp4',
    'https://www.sample-videos.com/video321/mp4/720/big_buck_bunny_720p_5mb.mp4',
  ];

  int _currentIndex = 0;

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Reels',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: reelUrls.length,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return Stack(
            fit: StackFit.expand,
            children: [
              ReelVideoPlayer(
                videoUrl: reelUrls[index],
                isActive: index == _currentIndex,
              ),
              ReelInteractionSidebar(),
              ReelBottomOverlay(),
            ],
          );
        },
      ),
    );
  }
}

