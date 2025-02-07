import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/search_provider.dart';
import '../error_widgets/error_widget.dart';

class SearchGrid extends StatelessWidget {
  const SearchGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchProvider>(
      builder: (context, searchProvider, child) {
        if (searchProvider.isLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (searchProvider.error != null) {
          return ErrorScreen(
            message: searchProvider.error!,
            onRetry: (){
              searchProvider.fetchTrendingSearches();
            }
          );

        } else if (searchProvider.searchResults.isEmpty) {
          return ErrorScreen(
              message: 'No results Found',
              onRetry: (){
                searchProvider.fetchTrendingSearches();
              }
          );
        } else {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
            ),
            itemCount: searchProvider.searchResults.length,
            itemBuilder: (context, index) {
              final result = searchProvider.searchResults[index];
              return Image.network(
                result.imageUrl,
                fit: BoxFit.cover,
              );
            },
          );
        }
      },
    );
  }
}

