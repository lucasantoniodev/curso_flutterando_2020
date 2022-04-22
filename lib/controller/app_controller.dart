import 'package:flutter/foundation.dart';

class AppController extends ChangeNotifier {
  bool isDarkTheme = false;

  AppController();

  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }

  static AppController instance = AppController();
}
