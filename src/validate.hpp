#pragma once
#include "src/Employee.hpp"
#include <string>
using std::string;

bool isNameValid(const string &);
bool isIDValid(const string &);
bool isPhoneValid(const string &);
bool isDepartmentValid(const string &);
bool isCollegeValid(const string &);
bool validate(const EmployeeInfo &);
