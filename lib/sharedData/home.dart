import 'package:flutter/material.dart';

class HomeState with ChangeNotifier {
  int _state = 0;

  get state => _state;

  void setHomeState(int state) {
    _state = state;
    notifyListeners();
  }

  static const int login = 0;
  static const int register = 1;
  static const int forgetPassword = 2;
  static const int home = 3;
  static const int home_main = home;
  static const int home_more = home + 1;
  static const int home_contact = home + 2;
}
