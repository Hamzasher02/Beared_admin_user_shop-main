
import 'package:flutter/foundation.dart';

class SignupPolicyCheckBoxProvider extends ChangeNotifier{

  bool _isChecked = false;
  bool get isChecked => _isChecked;

  void toggleCheckbox(){
    _isChecked = ! _isChecked;
    notifyListeners();
  }


}