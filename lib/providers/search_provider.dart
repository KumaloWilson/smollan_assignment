import 'package:flutter/material.dart';

import '../models/search_result.dart';
import '../models/trending_search.dart';

class SearchProvider extends ChangeNotifier {
  List<SearchResult> _searchResults = [];
  List<TrendingSearch> _trendingSearches = [];
  bool _isLoading = false;
  String? _error;

  List<SearchResult> get searchResults => _searchResults;
  List<TrendingSearch> get trendingSearches => _trendingSearches;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> search(String query) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      // Simulating API call
      await Future.delayed(Duration(seconds: 1));
      _searchResults = List.generate(
        20,
            (index) => SearchResult(
          id: 'result_$index',
          imageUrl: 'https://picsum.photos/200?random=$index',
        ),
      );
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> fetchTrendingSearches() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      // Simulating API call
      await Future.delayed(Duration(seconds: 1));
      _trendingSearches = List.generate(
        10,
            (index) => TrendingSearch(
          id: 'trend_$index',
          name: 'Trending Topic $index',
          category: 'Category ${index % 3}',
          imageUrl: 'https://picsum.photos/200?random=$index',
        ),
      );
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}

