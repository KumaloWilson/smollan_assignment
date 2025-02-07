import 'package:flutter/material.dart';
import '../models/userpost_model.dart';
import '../services/api_services.dart';

class PostProvider extends ChangeNotifier {
  final APIServices _apiServices = APIServices();
  UserPost? _post;
  bool _isLoading = false;
  String? _error;

  UserPost? get post => _post;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> fetchPost(String postId) async {
    _isLoading = true;
    _error = null;
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

  void incrementLikes() {
    if (_post != null) {
      _post = UserPost(
        username: _post!.username,
        profilePic: _post!.profilePic,
        image: _post!.image,
        likes: _post!.likes + 1,
        caption: _post!.caption,
        postDate: _post!.postDate,
        postText: _post!.postText,
      );
      notifyListeners();
    }
  }
}

