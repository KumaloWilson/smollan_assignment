import 'package:flutter/material.dart';
import 'package:smollan_assignment/core/constants/color_constants.dart';
import 'package:smollan_assignment/widgets/search_widgets/search_categories.dart';
import 'package:smollan_assignment/widgets/search_widgets/trending_searches.dart';
import '../../widgets/search_widgets/search_content_grid.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool _isSearching = false;
  String _searchQuery = '';

  void _startSearch() {
    setState(() {
      _isSearching = true;
    });
  }

  void _stopSearch() {
    setState(() {
      _isSearching = false;
      _searchQuery = '';
    });
  }

  void _updateSearchQuery(String query) {
    setState(() {
      _searchQuery = query;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        elevation: 0,
        title: SearchBar(
          onTap: _startSearch,
          onSubmitted: _updateSearchQuery,
        ),
      ),
      body: _isSearching ? _buildSearchResults() : _buildInitialContent(),
    );
  }

  Widget _buildInitialContent() {
    return ListView(
      children: [
        TrendingSearches(onTrendTap: _updateSearchQuery),
        SearchCategories(),
        SearchContentGrid(),
      ],
    );
  }

  Widget _buildSearchResults() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            autofocus: true,
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
              suffixIcon: IconButton(
                icon: Icon(Icons.clear),
                onPressed: _stopSearch,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Palette.instagramLightGray,
            ),
            onChanged: _updateSearchQuery,
          ),
        ),
        Expanded(
          child: _searchQuery.isEmpty
              ? TrendingSearches(onTrendTap: _updateSearchQuery)
              : SearchContentGrid(searchQuery: _searchQuery),
        ),
      ],
    );
  }
}

