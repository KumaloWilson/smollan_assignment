import 'package:flutter/material.dart';

class EditPostScreen extends StatelessWidget {
  const EditPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'New Post',
          style: TextStyle(),
        ),
        actions: [
          TextButton(
            child: Text(
              'Share',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              // Implement post sharing logic
            },
          ),
        ],
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Image.network(
              'https://picsum.photos/400',
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
          Divider(),
          ListTile(
            title: Text('Tag People'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Implement tag people functionality
            },
          ),
          Divider(),
          ListTile(
            title: Text('Add Location'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Implement add location functionality
            },
          ),
          Divider(),
          ListTile(
            title: Text('Also post to'),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              // Implement cross-posting options
            },
          ),
        ],
      ),
    );
  }
}

