import 'package:flutter/material.dart';
import '../models/post_model.dart';
import '../services/api_services.dart';

class PostProvider extends ChangeNotifier {
  final APIServices _apiServices = APIServices();
  PostModel? _post;
  bool _isLoading = false;
  String? _error;

  PostModel? get post => _post;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> fetchPost(String postId) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _post = await _apiServices.getPost(postId);
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void incrementLikes() {
    if (_post != null) {
      _post = PostModel(
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

