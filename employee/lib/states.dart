import 'package:employee/api/api.pb.dart';
import 'package:flutter/foundation.dart';

class EmployeeState with ChangeNotifier, DiagnosticableTreeMixin {
  Employee _employee = Employee();
  String _keywords = "";
  String _address = "localhost";
  List<String> _employeeIDs = [];
  Employee get employee => _employee;
  String get keywords => _keywords;
  List<String> get employeeIDs => _employeeIDs;

  set employeeIDs(List<String> ids) {
    _employeeIDs = ids;
    notifyListeners();
  }

  set employee(Employee e) {
    _employee = e;
    notifyListeners();
  }

  set keywords(String k) {
    _keywords = k;
    notifyListeners();
  }

  set address(String a) {
    _address = a;
    notifyListeners();
  }

  String get address => _address;

  void updateEmployee(Employee e) {
    _employee = e;
    notifyListeners();
  }

  void clearEmployee() {
    _employee = Employee();
    notifyListeners();
  }
}
