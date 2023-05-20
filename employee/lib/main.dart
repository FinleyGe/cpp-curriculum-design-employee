import 'package:employee/api/api.dart';
import 'package:employee/states.dart';
import 'package:employee/widgets/employee_form.dart';
import 'package:employee/widgets/statistic.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets/buttons.dart';
import 'widgets/id_input.dart';
import 'widgets/employee_display.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => EmployeeState()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '教职工管理系统',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: '教职工管理系统'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    context.read<EmployeeState>().address = 'localhost';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: IndexedStack(
          index: _currentIndex,
          children: <Widget>[
            Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // set port
                ElevatedButton(
                  onPressed: () async {
                    var res = await test();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text(res == 'Test' ? '连接测试成功' : '连接测试失败')),
                    );
                  },
                  child: const Text('测试'),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (ctx) {
                        return AlertDialog(
                          title: const Text('添加职员'),
                          content: const EmployeeForm(),
                          actions: <Widget>[
                            CancelButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            ConfirmButton(
                              onPressed: () async {
                                int res = await addEmployee(
                                    context.read<EmployeeState>().employee);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(res == 0
                                        ? '添加成功'
                                        : res == -1
                                            ? '添加失败'
                                            : '输入错误'),
                                  ),
                                );

                                if (res == 0) {
                                  context.read<EmployeeState>().clearEmployee();
                                }
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text('添加'),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (ctx) {
                        return AlertDialog(
                          title: const Text('删除职员'),
                          content: const IDInputDialog(),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('取消'),
                            ),
                            TextButton(
                              onPressed: () async {
                                int res = await deleteEmployee(
                                    context.read<EmployeeState>().employee.id);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(res == 0 ? '删除成功' : '不存在该职员'),
                                  ),
                                );

                                if (res == 0) {
                                  context.read<EmployeeState>().clearEmployee();
                                }
                                Navigator.of(context).pop();
                              },
                              child: const Text('确定'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text('删除'),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (ctx) {
                        return AlertDialog(
                          title: const Text('修改职员'),
                          content: const EmployeeForm(),
                          actions: <Widget>[
                            CancelButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            ConfirmButton(
                              onPressed: () async {
                                int res = await updateEmployee(
                                    context.read<EmployeeState>().employee);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(res == 0
                                        ? '修改成功'
                                        : res == -1
                                            ? '修改失败'
                                            : '输入错误'),
                                  ),
                                );

                                if (res == 0) {
                                  context.read<EmployeeState>().clearEmployee();
                                }
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text('修改'),
                ),
                SizedBox(
                  width: 200,
                  child: TextFormField(
                      decoration: const InputDecoration(labelText: '地址'),
                      onChanged: (value) {
                        context.read<EmployeeState>().address = value;
                        initStub(context.read<EmployeeState>().address);
                      },
                      initialValue: context.read<EmployeeState>().address),
                ),
              ],
            )),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (ctx) {
                          return AlertDialog(
                            title: const Text('通过ID查询'),
                            content: const IDInputDialog(),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('取消'),
                              ),
                              TextButton(
                                onPressed: () async {
                                  var res = await searchEmployeeByID(context
                                      .read<EmployeeState>()
                                      .employee
                                      .id);
                                  if (res.id == "NULL") {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('不存在该职员'),
                                      ),
                                    );
                                    context
                                        .read<EmployeeState>()
                                        .clearEmployee();
                                  } else {
                                    context.read<EmployeeState>().employee =
                                        res;
                                    Navigator.of(context).pop();
                                    showDialog(
                                      context: context,
                                      builder: (ctx) {
                                        return AlertDialog(
                                          title: const Text('职员信息'),
                                          content: const EmployeeInfo(),
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text('确定'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }
                                },
                                child: const Text('确定'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: const Text('通过ID查询'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (ctx) {
                          return AlertDialog(
                            title: const Text('通过关键词查询'),
                            content: const KeywordsInputDialog(),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('取消'),
                              ),
                              TextButton(
                                onPressed: () async {
                                  var res = await searchEmployeeByKeyWords(
                                      context.read<EmployeeState>().keywords);
                                  if (res.length == 0) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('不存在该职员'),
                                      ),
                                    );
                                    context
                                        .read<EmployeeState>()
                                        .clearEmployee();
                                  } else {
                                    // only one result
                                    context.read<EmployeeState>().employee =
                                        res[0];
                                    Navigator.of(context).pop();
                                    showDialog(
                                      context: context,
                                      builder: (ctx) {
                                        return AlertDialog(
                                          title: const Text('职员信息'),
                                          content: const EmployeeInfo(),
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text('确定'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }
                                },
                                child: const Text('确定'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: const Text('关键词模糊查询'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (ctx) {
                            return AlertDialog(
                              title: Text("统计各学院不同学历人数"),
                              content: StatisticByDepartmentDisplay(),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('确定'),
                                ),
                              ],
                            );
                          });
                    },
                    child: const Text('统计各学院不同学历人数'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (ctx) {
                            return AlertDialog(
                              title: Text("统计不同学历人数"),
                              content: StatisticByEducationDisplay(),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('确定'),
                                ),
                              ],
                            );
                          });
                    },
                    child: const Text('统计不同学历人数'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_accounts),
            label: '管理',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '查询',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.pink,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
