#include "Management.hpp"
#include <fstream>

Management::Management() { load(); }

bool Management::save() {
  std::ofstream fout("data.txt");
  if (!fout.is_open()) {
    return false;
  }
  auto *p = employees.begin();
  while (p != employees.end()) {
    fout << p->data.toString() << '\n';
    p = p->next;
  }

  fout.close();
  isSaved = true;
  return true;
}

bool Management::load() {
  std::ifstream fin("data.txt");
  if (!fin.is_open()) {
    return false;
  }
  while (!fin.eof()) {
    std::string line;
    std::getline(fin, line);
    if (line.empty()) {
      continue;
    }
    Employee e(line);
    employees.pushBack(e);
  }
  fin.close();
  return true;
}

bool Management::addEmployee(const Employee &e) {
  employees.pushBack(e);
  isSaved = false;
  return true;
}

bool Management::deleteEmployee(const Employee &e) {
  employees.remove(e);
  isSaved = false;
  return true;
}

bool Management::modifyEmployee(const Employee &e) {
  auto *p = employees.find(e);
  if (p == nullptr) {
    return false;
  }
  p->data = e;
  isSaved = false;
  return true;
}

Employee Management::searchEmployeeByID(const std::string &id) const {
  auto *p = employees.begin();
  while (p != employees.end()) {
    if (p->data.getInfo().id == id) {
      return p->data;
    }
    p = p->next;
  }
  return Employee();
}

LinkedList<Employee> Management::searchEmployee(const std::string &name) const {
  LinkedList<Employee> list;
  auto *p = employees.begin();
  while (p != employees.end()) {
    if (p->data.getInfo().name == name) {
      list.pushBack(p->data);
    }
    p = p->next;
  }
  return list;
}
