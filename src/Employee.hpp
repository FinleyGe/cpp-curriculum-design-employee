#pragma once
#include <sstream>
#include <string>
using std::ostream;
using std::string;
enum Education { BACHELOR = 0, MASTER = 1, DOCTOR = 2 };

struct EmployeeInfo {
  string name;
  int sex;
  string id;
  string phone;
  string college;
  string department;
  Education education;
  string format() const;
  friend ostream &operator<<(ostream &os, const EmployeeInfo &e);
};

class Employee {
private:
  EmployeeInfo info;

public:
  Employee();
  Employee(const EmployeeInfo);
  Employee(const Employee &);
  Employee(const string &);
  EmployeeInfo getInfo() const;
  void setInfo(const EmployeeInfo &);
  string toString() const;
  bool operator==(const Employee &e) const;
};
