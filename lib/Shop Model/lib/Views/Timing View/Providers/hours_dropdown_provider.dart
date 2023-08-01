
import 'package:flutter/foundation.dart';
class HoursDropdownProvider extends ChangeNotifier{
   String? _selectedValue;
  String? get selectedValue =>_selectedValue;

  void setHoursSelectedValue(String value){
    _selectedValue = value;
    notifyListeners();
  }
}
