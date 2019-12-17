import 'package:flutter/material.dart';

class UserInfo with ChangeNotifier {
  String _account = "";
  String _password = "";
  String _userName = "";
  String _icon = "";

  String get account => _account;

  String get password => _password;

  String get userName => _userName;

  String get icon => _icon;

  set icon(String value) {
    _icon = value;
    notifyListeners();
  }

  set userName(String value) {
    _userName = value;
    notifyListeners();
  }

  set password(String value) {
    _password = value;
    notifyListeners();
  }

  set account(String value) {
    _account = value;
    notifyListeners();
  }
}
