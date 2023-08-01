import 'package:flutter/foundation.dart';

class ProductProvider extends ChangeNotifier {
  int _x = 1;
  int get x => _x;

  void incrementX() {
    _x++;
    notifyListeners();
  }

  void decrementX() {
    _x--;
    notifyListeners();
  }
}
