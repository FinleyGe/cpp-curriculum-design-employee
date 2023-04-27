#include "Employee.hpp"

Employee::Employee() {}

Employee::Employee(const EmployeeInfo &info) : info(info) {}

Employee::Employee(const Employee &e) : info(e.info) {}

EmployeeInfo Employee::getInfo() const { return info; }

void Employee::setInfo(const EmployeeInfo &info) { this->info = info; }

std::string Employee::toString() const {
  string res;
  res += info.name + " ";
  res += info.id + " ";
  res += info.phone + " ";
  res += info.college + " ";
  res += info.department + " ";
  switch (info.education) {
  case BACHELOR:
    res += "BACHELOR";
    break;
  case MASTER:
    res += "MASTER";
    break;
  case DOCTOR:
    res += "DOCTOR";
    break;
  }
  return res;
}
