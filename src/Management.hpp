#pragma once
#include "lib/LinkedList.hpp"
#include "src/Employee.hpp"
#include "src/validate.hpp"
#include <fstream>
#include <map>
#include <sstream>

class Management {
private:
  LinkedList<Employee> employees;

public:
  bool isSaved = false;
  Management();
  int save();
  int load();
  int addEmployee(const Employee &);
  int deleteEmployee(const string &);
  int modifyEmployee(const Employee &);
  Employee searchEmployeeByID(const string &) const;
  LinkedList<Employee> searchEmployee(const string &) const;
  string statisticsByDepartment() const;
  string statisticsByEducation() const;
};
