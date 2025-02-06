import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';
import 'package:smollan_assignment/widgets/post_widgets/reaction_button.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

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
                'Proudly presenting the new collection of our brand. We have worked hard to bring you the best quality products. We hope you like them. #brand #newcollection',
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

