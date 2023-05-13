import 'package:flutter/material.dart';
import 'package:employee/api/api.dart';
import 'package:employee/api/api.pb.dart';

class StatisticByDepartmentDisplay extends StatefulWidget {
  const StatisticByDepartmentDisplay({Key? key}) : super(key: key);
  @override
  _StatisticByDepartmentDisplayState createState() =>
      _StatisticByDepartmentDisplayState();
}

class _StatisticByDepartmentDisplayState
    extends State<StatisticByDepartmentDisplay> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<DepartmentStatistic>>(
      future: statisticByDepartment(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          print(snapshot.data);
          if (snapshot.data!.isEmpty) {
            return const Text("No data");
          }
          return Text(snapshot.data.toString());
          // return Container(
          //   child: ListView.builder(
          //     itemCount: 4,
          //     scrollDirection: Axis.horizontal,
          //     itemBuilder: (context, index) {
          //       return new Text("test");
          //     },
          //   ),
          // );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return const CircularProgressIndicator();
      },
    );
  }
}

class StatisticByDepartmentDisplayItem extends StatelessWidget {
  final DepartmentStatistic d;
  const StatisticByDepartmentDisplayItem({super.key, required this.d});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(d.department),
        Row(
          children: [
            const Text("Bachlor: "),
            Text(d.bachelor.toString()),
          ],
        ),
        Row(
          children: [
            const Text("Master: "),
            Text(d.master.toString()),
          ],
        ),
        Row(
          children: [
            const Text("Doctor: "),
            Text(d.doctor.toString()),
          ],
        )
      ],
    );
  }
}

class StatisticByEducationDisplay extends StatefulWidget {
  const StatisticByEducationDisplay({Key? key}) : super(key: key);
  @override
  _StatisticByEducationDisplayState createState() =>
      _StatisticByEducationDisplayState();
}

class _StatisticByEducationDisplayState
    extends State<StatisticByEducationDisplay> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<EducationStatistic>(
      future: statisticByEducation(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          print(snapshot.data);
          return Text(snapshot.data.toString());
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
