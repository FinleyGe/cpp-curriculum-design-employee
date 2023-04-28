#include "Management.hpp"
#include "./validate.cpp"
#include "Employee.hpp"
#include <fstream>
#include <map>
Management::Management() { load(); }

int Management::save() {
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

int Management::load() {
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

int Management::addEmployee(const Employee &e) {
  auto info = e.getInfo();
  if (searchEmployeeByID(info.id).getInfo().id == info.id) {
    return -1;
  }
  if (!validate(info)) {
    return -2;
  }
  employees.pushBack(e);
  isSaved = false;
  return 0;
}

int Management::deleteEmployee(const Employee &e) {
  employees.remove(e);
  isSaved = false;
  return true;
}

int Management::modifyEmployee(const Employee &e) {
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

string Management::statisticsByDepartment() const {
  string res;
  std::map<string, std::map<Education, int>> m;
  auto *p = employees.begin();
  while (p != employees.end()) {
    auto info = p->data.getInfo();
    m[info.department][info.education]++;
    p = p->next;
  }
  for (auto &i : m) {
    res += i.first + "\n";
    for (auto &j : i.second) {
      Education e = j.first;
      int count = j.second;
      string education;
      switch (e) {
      case BACHELOR:
        education = "BACHELOR";
        break;
      case MASTER:
        education = "MASTER";
        break;
      case DOCTOR:
        education = "DOCTOR";
        break;
      }
      res += education + ": " + std::to_string(count) + "\n";
    }
  }
  return res;
}

string Management::statisticsByEducation() const {
  std::map<Education, int> m;
  auto *p = employees.begin();
  while (p != employees.end()) {
    auto info = p->data.getInfo();
    m[info.education]++;
    p = p->next;
  }
  string res;
  for (auto &i : m) {
    Education e = i.first;
    int count = i.second;
    string education;
    switch (e) {
    case BACHELOR:
      education = "BACHELOR";
      break;
    case MASTER:
      education = "MASTER";
      break;
    case DOCTOR:
      education = "DOCTOR";
      break;
    }
    res += education + ": " + std::to_string(count) + "\n";
  }
  return res;
}
