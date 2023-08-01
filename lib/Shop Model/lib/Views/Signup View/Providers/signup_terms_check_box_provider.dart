import 'package:flutter/foundation.dart';

class SignupTermsCheckBoxProvider extends ChangeNotifier{
  bool _isChecked = false;
  bool get isChecked => _isChecked;

  void toggleCheckBox(){
    _isChecked = ! _isChecked;
    notifyListeners();
  }
}