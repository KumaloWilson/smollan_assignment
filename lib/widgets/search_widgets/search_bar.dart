import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final VoidCallback onTap;
  final Function(String) onSubmitted;

  const SearchBar({super.key, required this.onTap, required this.onSubmitted});

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 36,
        decoration: BoxDecoration(
          //color: InstagramColors.instagramLightGray,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            SizedBox(width: 10),
            Icon(
                Icons.search,
                //color: InstagramColors.instagramGray
            ),
            SizedBox(width: 10),
            Text(
              'Search',
              style: TextStyle(
                 // color: InstagramColors.instagramGray
              ),
            ),
          ],
        ),
      ),
    );
  }
}

