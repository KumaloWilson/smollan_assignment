import 'package:flutter/material.dart';
import '../models/feed_model.dart';
import '../models/post_model.dart';
import '../services/api_services.dart';

class FeedProvider extends ChangeNotifier {
  final APIServices _apiServices = APIServices();
  Feed? _feed;
  bool _isLoading = false;
  String? _error;

  Feed? get feedModel => _feed;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> fetchFeed() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _feed = await _apiServices.getFeed();
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void incrementLikes(int postIndex) {
    if (_feed != null && _feed!.posts.length > postIndex) {
      var post = _feed!.posts[postIndex];
      post = Post(
        username: post.username,
        profilePic: post.profilePic,
        image: post.image,
        likes: post.likes + 1,
        postDate: post.postDate,
        postText: post.postText ,
        caption: post.caption,
      );
      _feed!.posts[postIndex] = post;
      notifyListeners();
    }
  }
}

