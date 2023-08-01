

import 'package:flutter/foundation.dart';
class TimingProvider extends ChangeNotifier{
  bool _isManualSelection = false;
  bool get isManualSelection => _isManualSelection;

  void openManualSelection({required bool select}){
    _isManualSelection = select;
    notifyListeners();
  }

}