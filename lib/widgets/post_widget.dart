import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return PostWidget();
      },
    );
  }
}

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage('https://picsum.photos/200'),
          ),
          title: Text('username'),
          subtitle: Text('Location'),
          trailing: Icon(Icons.more_vert),
        ),
        Image.network(
          'https://picsum.photos/400/400',
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Row(
          children: [
            IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
            IconButton(icon: Icon(FontAwesomeIcons.comment), onPressed: () {}),
            IconButton(icon: Icon(FontAwesomeIcons.paperPlane), onPressed: () {}),
            Spacer(),
            IconButton(icon: Icon(Icons.bookmark_border), onPressed: () {}),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('1,234 likes', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 4),
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(text: 'username ', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'This is a caption for the post...'),
                  ],
                ),
              ),
              SizedBox(height: 4),
              Text('View all 123 comments', style: TextStyle(color: Colors.grey)),
              SizedBox(height: 4),
              Text('2 HOURS AGO', style: TextStyle(color: Colors.grey, fontSize: 10)),
            ],
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}

