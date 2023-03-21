import 'package:flutter/material.dart';
import 'package:praktikum_3/models/tourism_place.dart';

class DoneTourismProvider with ChangeNotifier {
  final List<TourismPlace> _doneTourismList = [];
  List<TourismPlace> get doneTourismList => _doneTourismList;

  void complete(TourismPlace place, bool isDone) {
    isDone ? _doneTourismList.add(place) : _doneTourismList.remove(place);
    notifyListeners();
  }
}
