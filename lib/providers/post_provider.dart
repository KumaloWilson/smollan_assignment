import 'package:flutter/material.dart';
import '../models/post_model.dart';
import '../services/api_services.dart';

class PostProvider extends ChangeNotifier {
  final APIServices _apiServices = APIServices();
  Post? _post;
  bool _isLoading = false;
  String? _error;

  Post? get postModel => _post;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> fetchPost() async {
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
      _post = Post(
        username: _post!.username,
        profilePic: _post!.profilePic,
        image: _post!.image,
        likes: _post!.likes,
        caption: _post!.caption,
      );
      notifyListeners();
    }
  }
}

