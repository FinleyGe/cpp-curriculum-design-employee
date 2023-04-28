#pragma once
#include "Employee.hpp"
#include <string>
using std::string;
bool isNameValid(const string &s) { return s.length() > 0; }
bool isIDValid(const string &s) {
  if (s.length() != 8) {
    return false;
  }
  for (int i = 0; i < 8; i++) {
    if (s[i] < '0' || s[i] > '9') {
      return false;
    }
  }
  return true;
}
bool isPhoneValid(const string &s) {
  if (s.length() != 11) {
    return false;
  }
  for (int i = 0; i < 11; i++) {
    if (s[i] < '0' || s[i] > '9') {
      return false;
    }
  }
  return true;
}

bool isDepartmentValid(const string &s) {
  if (s.length() == 0) {
    return false;
  }
  for (int i = 0; i < s.length(); i++) {
    if (s[i] < 'A' || s[i] > 'Z') {
      return false;
    }
  }
  return true;
}

bool isCollegeValid(const string &s) {
  if (s.length() == 0) {
    return false;
  }
  for (int i = 0; i < s.length(); i++) {
    if (s[i] < 'A' || s[i] > 'Z') {
      return false;
    }
  }
  return true;
}

bool validate(const EmployeeInfo &info) {
  return isNameValid(info.name) && isIDValid(info.id) &&
         isPhoneValid(info.phone) && isDepartmentValid(info.department) &&
         isCollegeValid(info.college);
}
