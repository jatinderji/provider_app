import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier {
  int _likes = 0;

  int get likes => _likes;

  void incrementLike() {
    _likes++;
    notifyListeners();
  }
}
