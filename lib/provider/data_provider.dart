import 'package:flutter/material.dart';
import '../model/data_model.dart';

class DataProvider extends ChangeNotifier {
  DataModel? dataModel;

  void setData(Map<String, dynamic> data) {
    dataModel = DataModel.fromJson(data);
    notifyListeners();
  }
}
