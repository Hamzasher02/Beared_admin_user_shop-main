
import 'package:flutter/foundation.dart';
class DaysDropdownProvider extends ChangeNotifier{
  String? _selectedDays;
  String? get selectedDays =>_selectedDays;

  void setDaysSelectedValue(String value){
    _selectedDays = value;
    notifyListeners();
  }
}
