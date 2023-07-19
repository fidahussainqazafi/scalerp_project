import 'package:flutter/foundation.dart';

class SwitchController with ChangeNotifier {
  bool themeswitch = false;

  void changeThemeswitch(bool newValue) {
    themeswitch = newValue;
    notifyListeners();
  }
}
