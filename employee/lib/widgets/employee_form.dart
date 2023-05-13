import 'package:employee/api/api.pb.dart';
import 'package:employee/states.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EmployeeForm extends StatefulWidget {
  const EmployeeForm({super.key});

  @override
  State<EmployeeForm> createState() => _EmployeeFormState();
}

class _EmployeeFormState extends State<EmployeeForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            labelText: '姓名',
            hintText: '请输入姓名',
          ),
          initialValue: context.watch<EmployeeState>().employee.name,
          onChanged: (value) {
            setState(() {
              context.read<EmployeeState>().employee.name = value;
            });
          },
        ),
        TextFormField(
          decoration: const InputDecoration(labelText: '工号', hintText: '请输入工号'),
          initialValue: context.watch<EmployeeState>().employee.id,
          onChanged: (value) {
            setState(() {
              context.read<EmployeeState>().employee.id = value;
            });
          },
        ),
        TextFormField(
          decoration:
              const InputDecoration(labelText: '电话号', hintText: '请输入电话号'),
          initialValue: context.watch<EmployeeState>().employee.phone,
          onChanged: (value) {
            setState(() {
              context.read<EmployeeState>().employee.phone = value;
            });
          },
        ),
        TextFormField(
          decoration: const InputDecoration(labelText: '学院', hintText: '请输入学院'),
          initialValue: context.watch<EmployeeState>().employee.college,
          onChanged: (value) {
            setState(() {
              context.read<EmployeeState>().employee.college = value;
            });
          },
        ),
        TextFormField(
          decoration: const InputDecoration(labelText: '专业', hintText: '请输入专业'),
          initialValue: context.watch<EmployeeState>().employee.department,
          onChanged: (value) {
            setState(() {
              context.read<EmployeeState>().employee.department = value;
            });
          },
        ),
        DropdownButton(
          value: context.watch<EmployeeState>().employee.education,
          hint: const Text('请选择学历'),
          items: const <DropdownMenuItem>[
            DropdownMenuItem(
              value: 0,
              child: Text('本科'),
            ),
            DropdownMenuItem(
              value: 1,
              child: Text('硕士'),
            ),
            DropdownMenuItem(
              value: 2,
              child: Text('博士'),
            ),
          ],
          onChanged: (value) {
            setState(() {
              context.read<EmployeeState>().employee.education = value;
            });
          },
        )
      ],
    );
  }
}
