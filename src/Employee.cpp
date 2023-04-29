#include "Employee.hpp"

using std::ostream;

Employee::Employee() {}

Employee::Employee(const EmployeeInfo info) : info(info) {}

Employee::Employee(const Employee &e) : info(e.info) {}

Employee::Employee(const string &s) {
  std::stringstream ss(s);
  ss >> info.name;
  ss >> info.id;
  ss >> info.phone;
  ss >> info.college;
  ss >> info.department;
  int education;
  ss >> education;
  info.education = (Education)education;
}

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
string EmployeeInfo::format() const {

  string res;
  res += "Name: " + name + "\n";
  res += "ID: " + id + "\n";
  res += "Phone: " + phone + "\n";
  res += "College: " + college + "\n";
  res += "Department: " + department + "\n";
  switch (education) {
  case BACHELOR:
    res += "Education: BACHELOR\n";
    break;
  case MASTER:
    res += "Education: MASTER\n";
    break;
  case DOCTOR:
    res += "Education: DOCTOR\n";
    break;
  }
  return res;
}

ostream &operator<<(ostream &os, const EmployeeInfo &e) {
  os << e.format();
  return os;
}

bool Employee::operator==(const Employee &e) const {
  return info.id == e.info.id;
}
