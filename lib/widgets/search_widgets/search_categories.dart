import 'package:flutter/material.dart';


class SearchCategories extends StatefulWidget {
  const SearchCategories({super.key});

  @override
  State<SearchCategories> createState() => _SearchCategoriesState();
}

class _SearchCategoriesState extends State<SearchCategories> {

  final List<String> _categories = [
    'IGTV',
    'Shop',
    'Style',
    'Sports',
    'Auto',
    'Music',
  ];



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Chip(
              label: Text(_categories[index]),
              //backgroundColor: InstagramColors.instagramLightGray,
            ),
          );
        },
      ),
    );
  }
}

