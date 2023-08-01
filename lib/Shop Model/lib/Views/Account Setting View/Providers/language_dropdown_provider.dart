
import 'package:flutter/cupertino.dart';

class LanguageDropdownProvider extends ChangeNotifier{

  String? _selectedLanguage;
  String? get selectedLanguage => _selectedLanguage;

  void setSelectedLanguage(String value){
    _selectedLanguage = value;

    notifyListeners();

  }

}