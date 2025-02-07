import 'package:face_pile/face_pile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';
import 'package:smollan_assignment/widgets/post_widgets/reaction_button.dart';
import '../../features/profile/views/user_profile_screen.dart';
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
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UserProfileScreen(),
              )
            );
          },
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
                value: '123',
                onTap: () {},
              ),
              ReactionButton(
                label: 'comment',
                icon: FontAwesomeIcons.comment,
                value: '56',
                onTap: () {},
              ),
              ReactionButton(
                label: 'share',
                icon: FontAwesomeIcons.paperPlane,
                value: '78',
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

          child: Row(
            children: [
              FacePile(
                radius: 10,
                space: 16,
                images: [
                  NetworkImage("https://i.pravatar.cc/300?img=1"),
                  NetworkImage("https://i.pravatar.cc/300?img=2"),
                  NetworkImage("https://i.pravatar.cc/300?img=3"),
                  NetworkImage("https://i.pravatar.cc/300?img=4"),
                ],
              ),
              SizedBox(width: 8),
              Text('Liked by ${post.likes}', style: TextStyle(fontSize: 12)),
            ],
          ),
        ),
        SizedBox(height: 4),
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

