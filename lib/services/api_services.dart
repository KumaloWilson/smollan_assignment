import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/feed_model.dart';
import '../models/post_model.dart';
import '../models/profile_model.dart';

class APIServices {
  static const String baseUrl = 'https://api.mocklets.com/p6903';

  Future<Feed> getFeed() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/getFeedAPI'));
      if (response.statusCode == 200) {
        return Feed.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to load feed');
      }
    } catch (e) {
      throw Exception('Error fetching feed: $e');
    }
  }

  Future<Post> getPost() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/getPostAPI'));
      if (response.statusCode == 200) {
        return Post.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to load post');
      }
    } catch (e) {
      throw Exception('Error fetching post: $e');
    }
  }

  Future<Profile> getProfile() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/getProfileAPI'));
      if (response.statusCode == 200) {
        return Profile.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to load profile');
      }
    } catch (e) {
      throw Exception('Error fetching profile: $e');
    }
  }
}

