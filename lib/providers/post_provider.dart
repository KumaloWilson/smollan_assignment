import 'package:flutter/material.dart';
import '../models/userpost_model.dart';
import '../services/api_services.dart';

class PostProvider extends ChangeNotifier {
  final APIServices _apiServices = APIServices();
  UserPost? _post;
  bool _isLoading = false;
  String? _error;
  bool _isLiked = false;

  UserPost? get post => _post;
  bool get isLoading => _isLoading;
  String? get error => _error;
  bool get isLiked => _isLiked;

  Future<void> fetchPost(String postId) async {
    _isLoading = true;
    _error = null;
    _isLiked = false; // Reset like state
    notifyListeners();

    try {
      final response = await _apiServices.getPost();
      if (response.success) {
        _post = response.data;
      } else {
        _error = response.message;
      }
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void toggleLike() {
    if (_post != null) {
      _isLiked = !_isLiked;

      // Update likes based on like state
      _post = UserPost(
        username: _post!.username,
        profilePic: _post!.profilePic,
        image: _post!.image,
        likes: _isLiked ? _post!.likes + 1 : _post!.likes - 1,
        caption: _post!.caption,
        postDate: _post!.postDate,
        postText: _post!.postText,
      );

      notifyListeners();
    }
  }

  void incrementLikes() {
    toggleLike();
  }
}