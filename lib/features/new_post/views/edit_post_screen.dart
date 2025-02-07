import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../providers/new_post_provider.dart';

class PostEditView extends StatelessWidget {
  const PostEditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Edit', style: TextStyle(color: Colors.white)),
        actions: [
          TextButton(
            child: Text('Share', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
            onPressed: () {
              // Implement post sharing logic
            },
          ),
        ],
      ),
      body: Consumer<NewPostProvider>(
        builder: (context, newPostProvider, child) {
          return Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Image.network(
                  'https://picsum.photos/400?random=${newPostProvider.selectedImageIndex}',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Write a caption...',
                    border: InputBorder.none,
                  ),
                  maxLines: 3,
                ),
              ),
              ListTile(
                title: Text('Tag People'),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  // Implement tag people functionality
                },
              ),
              ListTile(
                title: Text('Add Location'),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  // Implement add location functionality
                },
              ),
              ListTile(
                title: Text('Also post to'),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  // Implement cross-posting options
                },
              ),
            ],
          );
        },
      ),
    );
  }
}

