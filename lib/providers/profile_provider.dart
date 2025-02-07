import 'package:flutter/material.dart';
import '../models/profile_model.dart';
import '../services/api_services.dart';

class ProfileProvider extends ChangeNotifier {
  final APIServices _apiServices = APIServices();
  Profile? _profile;
  bool _isLoading = false;
  String? _error;

  Profile? get profile => _profile;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> fetchProfile() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _profile = await _apiServices.getProfile();
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}

