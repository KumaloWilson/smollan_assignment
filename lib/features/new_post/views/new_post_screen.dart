import 'package:flutter/material.dart';
import '../../../core/constants/color_constants.dart';
import '../../../widgets/new_post/camera_preview_widget.dart';
import '../../../widgets/new_post/gallery_grid_widget.dart';
import 'edit_post_screen.dart';

class NewPostScreen extends StatefulWidget {
  const NewPostScreen({super.key});

  @override
  State<NewPostScreen> createState() => _NewPostScreenState();
}

class _NewPostScreenState extends State<NewPostScreen> {
  bool _isGalleryView = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        leading: IconButton(
          icon: Icon(Icons.close,),
          onPressed: () => Navigator.pop(context),
        ),

        title: Text(
          'New Post',
          style: TextStyle(),
        ),
        actions: [
          TextButton(
            child: Text(
              'Next',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              // Navigate to EditPostScreen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditPostScreen()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: _isGalleryView ? GalleryGridWidget() : CameraPreviewWidget(),
          ),
          _buildBottomBar(),
        ],
      ),
    );
  }

  Widget _buildBottomBar() {
    final theme = Theme.of(context);

    return Container(
      color: theme.scaffoldBackgroundColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildBottomBarButton('Gallery', Icons.photo_library, _isGalleryView),
              _buildBottomBarButton('Photo', Icons.camera_alt, !_isGalleryView),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'Recents',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _buildBottomBarButton(String label, IconData icon, bool isSelected) {

    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () {
        setState(() {
          _isGalleryView = label == 'Gallery';
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isSelected ? Palette.instagramBlue : theme.scaffoldBackgroundColor,
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Palette.instagramBlue : theme.scaffoldBackgroundColor,
            ),
          ),
        ],
      ),
    );
  }
}

