

import 'package:flutter/cupertino.dart';

class BottomNavigationBarProvider extends ChangeNotifier{

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void setCurrentIndex(int index){
    _currentIndex = index;
    notifyListeners();
  }


}