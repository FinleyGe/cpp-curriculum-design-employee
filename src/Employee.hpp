#pragma once
#include <string>
using std::string;
enum Education { BACHELOR, MASTER, DOCTOR };

struct EmployeeInfo {
  string name;
  int sex;
  string id;
  string phone;
  string college;
  string department;
  Education education;
};

class Employee {
private:
  EmployeeInfo info;

public:
  Employee();
  Employee(const EmployeeInfo &);
  Employee(const Employee &);
  Employee(const string &);
  EmployeeInfo getInfo() const;
  void setInfo(const EmployeeInfo &);
  string toString() const;
};
