import 'package:flutter/foundation.dart';

class StatsDropDownProvider extends ChangeNotifier{
  String? _isStampSelected;
  String? get isSelected => _isStampSelected;

  void setStampsSelected(String value){
    _isStampSelected = value;
    notifyListeners();

  }
}