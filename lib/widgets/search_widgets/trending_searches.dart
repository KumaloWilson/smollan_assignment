import 'package:flutter/material.dart';

class TrendingSearches extends StatelessWidget {
  final Function(String) onTrendTap;

  TrendingSearches({super.key, required this.onTrendTap});

  final List<String> _trendingSearches = [
    'nature',
    'travel',
    'food',
    'fashion',
    'art',
    'music',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Trending',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: _trendingSearches.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.trending_up),
              title: Text(_trendingSearches[index]),
              onTap: () => onTrendTap(_trendingSearches[index]),
            );
          },
        ),
      ],
    );
  }
}

