import 'package:employee/states.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IDInputDialog extends StatelessWidget {
  const IDInputDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(labelText: "ID", hintText: "请输入工号"),
      initialValue: context.read<EmployeeState>().employee.id,
      onChanged: (value) {
        context.read<EmployeeState>().employee.id = value;
      },
    );
  }
}

class KeywordsInputDialog extends StatelessWidget {
  const KeywordsInputDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:
          const InputDecoration(labelText: "Keywords", hintText: "请输入关键词"),
      initialValue: context.read<EmployeeState>().keywords,
      onChanged: (value) {
        context.read<EmployeeState>().keywords = value;
      },
    );
  }
}
