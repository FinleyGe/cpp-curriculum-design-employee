#include "Management.hpp"
#include <iostream>
#include <string>
using std::cin;
using std::cout;
using std::string;
void mainMenu();
void manageMenu();
void searchMenu();
int getChoice();
void printMainMenu();

Management m;

void printMainMenu() {
  string menu = "===================\n"
                "Welcome to Employee Management System\n"
                "Type the number of each item after '>'\n"
                "1. Manage Menu\n"
                "2. Search Menu\n"
                "3. Save\n"
                "4. Exit\n"
                "";
  cout << menu;
}

void mainMenu() {
  while (true) {
    printMainMenu();
    int choice = getChoice();
    switch (choice) {
    case 1:
      manageMenu();
      break;
    case 2:
      searchMenu();
      break;
    case 3:
      m.save();
      break;
    case 4:
      if (!m.isSaved) {
        cout << "You have unsaved changes, save before exit? (y/n)\n";
        char c;
        cin >> c;
        if (c == 'y') {
          m.save();
        }
      }
      cout << "Bye~\n";
      return;
    default:
      cout << "Invalid choice\n";
    }
  }
}
void manageMenu() {
  string menu = "Manage Menu\n"
                "Type the number of each item after '>'\n"
                "1. Add\n"
                "2. Delete\n"
                "3. Modify\n"
                "4. Back\n"
                "";
  cout << menu;
  int choice = getChoice();
  switch (choice) {
  case 1: {
    EmployeeInfo e;
    cout << "ID: ";
    cin >> e.id;
    cout << "Name: ";
    cin >> e.name;
    cout << "Phone: ";
    cin >> e.phone;
    cout << "Department: ";
    cin >> e.department;
    cout << "College: ";
    cin >> e.college;
    cout << "Education: 0 for bachelor, 1 for master, 2 for doctor\n";
    int education;
    cin >> education;
    e.education = (Education)education;
    Employee em;
    em.setInfo(e);
    auto res = m.addEmployee(em);
    switch (res) {
    case 0:
      cout << "Success\n";
      break;
    case -1:
      cout << "Employee already exists\n";
      break;
    case -2:
      cout << "Invalid input\n";
      break;
    }
    break;
  }
  case 2: {
    string id;
    cout << "ID: ";
    cin >> id;
    Employee e(id);
    m.deleteEmployee(e);
    break;
  }
  case 3: {
    string id;
    cout << "ID: ";
    cin >> id;
    auto e = m.searchEmployeeByID(id);
    if (e.getInfo().id == "") {
      cout << "Employee not found\n";
      break;
    }
    EmployeeInfo info = e.getInfo();
    cout << "Name: " << info.name << "\n"
         << "New name:";
    cin >> info.name;
    cout << "Phone: " << info.phone << "\n"
         << "New phone:";
    cin >> info.phone;
    cout << "Department: " << info.department << "\n"
         << "New department:";
    cin >> info.department;
    cout << "College: " << info.college << "\n"
         << "New college:";
    cin >> info.college;
    cout << "Education: " << info.education << "\n"
         << "New education:";
    cout << "Education: 0 for bachelor, 1 for master, 2 for doctor\n";
    int education;
    cin >> education;
    info.education = (Education)education;
    e.setInfo(info);
    break;
  }
  case 4: {
    printMainMenu();
    return;
  }
  default:
    cout << "Invalid choice\n";
  }
}

void searchMenu() {
  string menu =
      "Search Menu\n"
      "Type the number of each item after '>'\n"
      "1. Search by ID\n"
      "2. Search by name, phone, department or college.\n"
      "3. Statistics educational background of each department\n"
      "4. Statistics number of employees each educational background\n"
      "5. Back\n"
      "";
  cout << menu;
  int choice = getChoice();
  switch (choice) {
  case 1: {
    string id;
    cout << "ID: ";
    cin >> id;
    auto e = m.searchEmployeeByID(id);
    if (e.getInfo().id == "") {
      cout << "Employee not found\n";
      break;
    }
    cout << "Employee found\n";
    cout << e.getInfo() << "\n";
    break;
  }

  case 2: {
    string keyword;
    cout << "Keyword: ";
    cin >> keyword;
    auto e = m.searchEmployee(keyword);
    if (e.getSize() == 0) {
      cout << "Employee not found\n";
      break;
    }

    auto start = e.begin();
    auto end = e.end();

    while (start != end) {
      cout << start << "\n";
      start = start->next;
    }

    break;
  }
  case 3: {
    cout << m.statisticsByDepartment() << "\n";
  }
  case 4: {
    cout << m.statisticsByEducation() << "\n";
  }
  case 5: {
    printMainMenu();
    return;
  }
  default:
    cout << "Invalid choice\n";
  }
}

int getChoice() {
  int choice;
  cout << ">";
  cin >> choice;
  return choice;
}
int main() { mainMenu(); }
