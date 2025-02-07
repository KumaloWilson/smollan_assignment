import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:smollan_assignment/core/utils/api_response.dart';
import 'package:smollan_assignment/core/utils/logs.dart';
import '../models/feed_model.dart';
import '../models/post_model.dart';
import '../models/profile_model.dart';

class APIServices {
  static const String baseUrl = 'https://api.mocklets.com/p6903';

  Future<APIResponse<Feed>> getFeed() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/getFeedAPI'));
      if (response.statusCode == 200) {
        final feed = Feed.fromJson(json.decode(response.body));
        return APIResponse(success: true, data: feed, message: 'Feed fetched successfully');
      } else {
        DevLogs.logError('Failed to load feed with status code: ${response.statusCode}');
        return APIResponse(success: false, message: 'Failed to load feed');
      }
    } catch (e) {
      DevLogs.logError('Error fetching feed: $e');
      return APIResponse(success: false, message: 'An error occurred while fetching feed: $e');
    }
  }

  Future<APIResponse<Post>> getPost() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/getPostAPI'));
      if (response.statusCode == 200) {
        final post = Post.fromJson(json.decode(response.body));
        return APIResponse(success: true, data: post, message: 'Post fetched successfully');
      } else {
        DevLogs.logError('Failed to load post with status code: ${response.statusCode}');
        return APIResponse(success: false, message: 'Failed to load post');
      }
    } catch (e) {
      DevLogs.logError('Error fetching post: $e');
      return APIResponse(success: false, message: 'An error occurred while fetching post: $e');
    }
  }

  Future<APIResponse<Profile>> getProfile() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/getProfileAPI'));
      if (response.statusCode == 200) {
        final profile = Profile.fromJson(json.decode(response.body));
        return APIResponse(success: true, data: profile, message: 'Profile fetched successfully');
      } else {
        DevLogs.logError('Failed to load profile with status code: ${response.statusCode}');
        return APIResponse(success: false, message: 'Failed to load profile');
      }
    } catch (e) {
      DevLogs.logError('Error fetching profile: $e');
      return APIResponse(success: false, message: 'An error occurred while fetching profile: $e');
    }
  }
}