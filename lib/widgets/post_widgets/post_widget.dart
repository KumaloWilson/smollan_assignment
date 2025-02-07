import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';
import 'package:smollan_assignment/widgets/post_widgets/reaction_button.dart';

import '../../models/post_model.dart';

class PostWidget extends StatelessWidget {
  final Post post;
  const PostWidget({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(post.profilePic),
          ),
          title: Text(post.username),
          //subtitle: Text(post.location),
          trailing: Icon(Icons.more_vert),
        ),
        Image.network(
          post.image,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              ReactionButton(
                label: 'like',
                icon: FontAwesomeIcons.heart,
                value: '1,234',
                onTap: () {},
              ),
              ReactionButton(
                label: 'comment',
                icon: FontAwesomeIcons.comment,
                value: '1,234',
                onTap: () {},
              ),
              ReactionButton(
                label: 'share',
                icon: FontAwesomeIcons.paperPlane,
                value: '1,234',
                onTap: () {},
              ),
              Spacer(),
              GestureDetector(
                child: Icon(FontAwesomeIcons.bookmark)
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ReadMoreText(
                post.caption,
                trimLines: 1,
                colorClickableText: Colors.pink,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'more',
                trimExpandedText: ' ',
                moreStyle: TextStyle(fontSize: 12,),
                lessStyle: TextStyle(fontSize: 12,),

              ),
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

