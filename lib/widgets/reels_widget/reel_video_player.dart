import 'package:flutter/material.dart';
import 'package:smollan_assignment/core/utils/logs.dart';
import 'package:video_player/video_player.dart';
import '../skeleton_widgets/image_skeleton.dart';

class ReelVideoPlayer extends StatefulWidget {
  final String videoUrl;
  final bool isActive;

  const ReelVideoPlayer({
    super.key,
    required this.videoUrl,
    required this.isActive,
  });

  @override
  State<ReelVideoPlayer> createState() => _ReelVideoPlayerState();
}

class _ReelVideoPlayerState extends State<ReelVideoPlayer> {
  late VideoPlayerController _controller;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeController();
  }

  @override
  void didUpdateWidget(ReelVideoPlayer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isActive != oldWidget.isActive) {
      _handleVisibilityChange();
    }
  }

  Future<void> _initializeController() async {
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));
    try {
      await _controller.initialize();
      setState(() {
        _isInitialized = true;
      });
      if (widget.isActive) {
        _controller.play();
      }
      _controller.setLooping(true);
    } catch (e) {
      DevLogs.logError("Error initializing video player: $e");
    }
  }

  void _handleVisibilityChange() {
    if (widget.isActive) {
      _controller.play();
    } else {
      _controller.pause();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized) {
      return ImageSkeleton();
    }
    return AspectRatio(
      aspectRatio: _controller.value.aspectRatio,
      child: VideoPlayer(_controller),
    );
  }
}

