import 'package:employee/states.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EmployeeInfo extends StatelessWidget {
  // show employee's infomation
  const EmployeeInfo({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _EmployeeItem(
            label: 'id', value: context.read<EmployeeState>().employee.id),
        _EmployeeItem(
            label: '姓名', value: context.read<EmployeeState>().employee.name),
        _EmployeeItem(
            value: context.read<EmployeeState>().employee.phone, label: '手机号'),
        _EmployeeItem(
            value: context.read<EmployeeState>().employee.department,
            label: '专业'),
        _EmployeeItem(
            value: context.read<EmployeeState>().employee.college, label: '专业'),
        _EmployeeItem(
            value: context.read<EmployeeState>().employee.education == 0
                ? '本科'
                : context.read<EmployeeState>().employee.education == 1
                    ? '硕士'
                    : '博士',
            label: '学历'),
      ],
    );
  }
}

class _EmployeeItem extends StatelessWidget {
  final String label;
  final String value;
  const _EmployeeItem({super.key, required this.label, required this.value});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label + ': '),
        Text(value),
      ],
    );
  }
}
