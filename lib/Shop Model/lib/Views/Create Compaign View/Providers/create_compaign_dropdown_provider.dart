
import 'package:flutter/foundation.dart';

class CreateCompaignDropdownProvider extends ChangeNotifier{

  String? _isSelectedType;
  String? get isSelected => _isSelectedType;

  void setTypeSelectedValue(String value){
    _isSelectedType = value;
    notifyListeners();

  }

}