
import 'package:flutter/foundation.dart';

class SwitchProvider extends ChangeNotifier{

  bool _isSwitched = false;

  bool get isSwitched => _isSwitched;

  void toggleSwitch(){
    _isSwitched = ! _isSwitched;

    notifyListeners();
  }

}