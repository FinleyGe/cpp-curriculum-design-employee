#include "../lib/LinkedList.hpp"
#include "Employee.hpp"

class Management {
private:
  LinkedList<Employee> employees;

public:
  bool isSaved = false;
  Management();
  bool save();
  bool load();
  bool addEmployee(const Employee &);
  bool deleteEmployee(const Employee &);
  bool modifyEmployee(const Employee &);
  Employee searchEmployeeByID(const string &) const;
  LinkedList<Employee> searchEmployee(const string &) const;
  string statisticsByDepartment() const;
  string statisticsByEducation() const;
};
