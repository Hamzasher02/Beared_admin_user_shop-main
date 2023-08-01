import 'package:flutter/foundation.dart';

class TermsCheckBoxProvider extends ChangeNotifier{
  bool _isChexked = false;
  bool get isChecked => _isChexked;

  void toggleCheckBox(){
    _isChexked = ! _isChexked;
    notifyListeners();
  }
}