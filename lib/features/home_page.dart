import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smollan_assignment/core/constants/image_asset_constants.dart';
import '../widgets/nav_bar/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        title: Image.asset(
          LocalImageConstants.secLogoDark,
          height: 50,
          width: 120,
        ),
        actions: [
          Badge(
            backgroundColor: Colors.red,
            alignment: Alignment.lerp(
                Alignment.centerRight,
                Alignment.topCenter,
                0.5
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border)
            ),
          ),
          Badge(
            backgroundColor: Colors.red,
            alignment: Alignment.lerp(
                Alignment.centerRight,
                Alignment.topCenter,
                0.5
            ),
            label: Text(
               '4',
              style: theme.textTheme.bodySmall,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.facebookMessenger),
            ),
          ),
        ],
      ),
    );
  }
}

