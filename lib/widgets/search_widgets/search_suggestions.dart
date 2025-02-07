import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/search_provider.dart';


class SuggestedSearches extends StatelessWidget {
  const SuggestedSearches({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchProvider>(
      builder: (context, searchProvider, child) {
        if (searchProvider.isLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (searchProvider.error != null) {
          return Center(child: Text('Error: ${searchProvider.error}'));
        } else if (searchProvider.trendingSearches.isEmpty) {
          return Center(child: Text('No suggested searches'));
        } else {
          return ListView.builder(
            itemCount: searchProvider.trendingSearches.length,
            itemBuilder: (context, index) {
              final trend = searchProvider.trendingSearches[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(trend.imageUrl),
                ),
                title: Text(trend.name),
                subtitle: Text(trend.category),
                onTap: () {
                  // Handle tapping on a suggested search
                },
              );
            },
          );
        }
      },
    );
  }
}

