import 'package:flutter/material.dart';

class NewPostProvider extends ChangeNotifier {
  int _selectedImageIndex = 0;

  int get selectedImageIndex => _selectedImageIndex;

  void selectImage(int index) {
    _selectedImageIndex = index;
    notifyListeners();
  }
}

